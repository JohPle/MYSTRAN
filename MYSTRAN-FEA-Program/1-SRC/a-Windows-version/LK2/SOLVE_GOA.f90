! ##################################################################################################################################
 
      SUBROUTINE SOLVE_GOA ( HANDLE )

! Solves the sustem of equations: KOO*GOA = -KAO' for matrix GOA which is used in the reduction of the F set stiffness, mass and
! load matrices from the F-set to the A, O_sets
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, SCR
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KOO_SDIA, NDOFA, NDOFO, NTERM_GOA, NTERM_KOO,   &
                                         NTERM_KAO
      USE PARAMS, ONLY                :  EPSIL, PRTGOA
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE_GOA_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  BAILOUT, SOLLIB
      USE SPARSE_MATRICES, ONLY       :  I2_GOA, I_GOA, J_GOA, GOA, I_KOO, J_KOO, KOO, I_KAO, J_KAO, KAO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

! Interface module not needed for subr's DPBTRF and DPBTRS. These are "CONTAIN'ed" in module LAPACK_LIN_EQN_DPB, which
! is "USE'd" above

      USE SOLVE_GOA_USE_IFs

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT):: HANDLE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'SOLVE_GOA'
      CHARACTER(  1*BYTE)             :: CLOSE_IT          ! Input to subr READ_MATRIX_i. 'Y'/'N' whether to close a file or not 
      CHARACTER(  8*BYTE)             :: CLOSE_STAT        ! What to do with file when it is closed
      CHARACTER( 24*BYTE)             :: MESSAG            ! File description. Input to subr UNFORMATTED_OPEN 
      CHARACTER( 22*BYTE)             :: MODNAM1           ! Name to write to screen to describe module being run
      CHARACTER(  1*BYTE)             :: NTERM_READ        ! 'Y' or 'N' Input to subr READ_MATRIX_1 
      CHARACTER(  1*BYTE)             :: NULL_COL          ! 'Y' if a col of KAO(transpose) is null 
      CHARACTER(  1*BYTE)             :: OPND              ! Input to subr READ_MATRIX_i. 'Y'/'N' whether to open  a file or not 
      CHARACTER(FILE_NAM_MAXLEN*BYTE) :: SCRFIL            ! File name
 
      INTEGER(LONG)                   :: I,J,K             ! DO loop indices or counters
      INTEGER(LONG)                   :: IOCHK             ! IOSTAT error number when opening a file
      INTEGER(LONG)                   :: OUNT(2)           ! File units to write messages to. Input to subr UNFORMATTED_OPEN   
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE_GOA_BEGEND

      REAL(DOUBLE)                    :: EPS1              ! A small number to compare real zero
      REAL(DOUBLE)                    :: GOA_COL(NDOFO)    ! A column of GOA solved for herein
      REAL(DOUBLE)                    :: INOUT_COL(NDOFO)  ! A column of KAO'
      REAL(DOUBLE)                    :: KOO_SCALE_FACS(NDOFO)
                                                           ! KOO scale facs. KOO will not be equilibrated so these are set to 1.0
 
      INTRINSIC                       :: DABS

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Make units for writing errors the screen and output file
 
      OUNT(1) = ERR
      OUNT(2) = F06
 
! Make sure that ABAND (KOO triangular factor) was successfully generated when SYM_MAT_DECOMP_LAPACK was run.

      IF (FACTORED_MATRIX(1:3) /= 'KOO') THEN
         WRITE(ERR,2504) SUBR_NAME, FACTORED_MATRIX
         WRITE(F06,2504) SUBR_NAME, FACTORED_MATRIX
         FATAL_ERR = FATAL_ERR + 1
         CALL OUTA_HERE ( 'Y' )
      ENDIF

! **********************************************************************************************************************************
      EPS1 = EPSIL(1)

! Solve for GOA

! Open a scratch file that will be used to write GOA nonzero terms to as we solve for columns of GOA. After all col's
! of GOA have been solved for, and we have a count on NTERM_GOA, we will allocate memory to the GOA arrays and read
! the scratch file values into those arrays. Then, in the calling subroutine, we will write NTERM_GOA, followed by
! GOA  row/col/value to a permanent file

      SCRFIL(1:)  = ' '
      SCRFIL(1:9) = 'SCRATCH-991'
      OPEN (SCR(1),STATUS='SCRATCH',FORM='UNFORMATTED',ACTION='READWRITE',IOSTAT=IOCHK)
      IF (IOCHK /= 0) THEN
         CALL OPNERR ( IOCHK, SCRFIL, OUNT, 'Y' )
         CALL FILE_CLOSE ( SCR(1), SCRFIL, 'DELETE', 'Y' )
         CALL OUTA_HERE ( 'Y' )                            ! Can't open scratch file, so quit
      ENDIF
 
! Loop on columns of KAO(transpose)
 
      WRITE(SC1, * )                                       ! Advance 1 line for the screen messages

      NTERM_GOA = 0
      DO J=1,NDOFA

         DO I=1,NDOFO
            INOUT_COL(I)       = ZERO                      ! Initialize INOUT_COL since GET_SPARSE_CRS_COL won't
            KOO_SCALE_FACS(I)  = ONE                       ! Initialize these
         ENDDO 
         NULL_COL = 'Y'
         CALL GET_SPARSE_CRS_ROW ( 'KAO',J, NTERM_KAO, NDOFA, NDOFO, I_KAO, J_KAO, KAO, -ONE, INOUT_COL, NULL_COL )

         IF (NULL_COL == 'N') THEN                         ! FBS will solve for GOA_COL & load it into GOA array

            CALL OURTIM
            MODNAM1 = '    Solve for GOA col '
            WRITE(SC1,22345) MODNAM1, J, NDOFA
                                                           ! FBS should not equilibrate since KOO was prevented from equilibrating
            IF      (SOLLIB == 'ZZPACK') THEN
               CALL FBS_LAPACK ( 'N', NDOFO, KOO_SDIA, KOO_SCALE_FACS, INOUT_COL )
            ELSE IF (SOLLIB == 'IntMKL') THEN
               CALL FBS_IntMKL ( HANDLE, NDOFO, INOUT_COL )
            ELSE
               FATAL_ERR = FATAL_ERR + 1
               WRITE(ERR,9991) SUBR_NAME, SOLLIB
               WRITE(F06,9991) SUBR_NAME, SOLLIB
               CALL OUTA_HERE ( 'Y' )
1            ENDIF

            DO I=1,NDOFO
               GOA_COL(I) = INOUT_COL(I)
            ENDDO

            DO I=1,NDOFO                                   ! Count NTERM_GOA and write nonzero GOA to scratch file
               IF (DABS(GOA_COL(I)) > EPS1) THEN
                  NTERM_GOA = NTERM_GOA + 1
                  WRITE(SCR(1)) I,J,GOA_COL(I)
               ENDIF
            ENDDO 

         ELSE

            DO I=1,NDOFO
               GOA_COL(I) = ZERO
            ENDDO 

         ENDIF
  
      ENDDO

! The GOA data in SCRATCH-991 is written one col at a time. We need it to be  written for one row at a time with all
! rows in numerical order.

      CALL ALLOCATE_SPARSE_MAT ( 'GOA', NDOFO, NTERM_GOA, SUBR_NAME )
      CALL ALLOCATE_L2_GOA_2 ( SUBR_NAME )
      REWIND (SCR(1))
      MESSAG = 'SCRATCH: GOA ROW/COL/VAL'
      NTERM_READ = 'N'
      OPND       = 'Y'
      CLOSE_IT   = 'N'
      CLOSE_STAT = 'KEEP    '
      CALL READ_MATRIX_2 (SCRFIL, SCR(1), OPND, CLOSE_IT, CLOSE_STAT, MESSAG,'GOA',NDOFO, NTERM_GOA, NTERM_READ, I2_GOA, J_GOA, GOA)
      CALL SORT_INT2_REAL1 (SUBR_NAME, 'I2_GOA, J_GOA, GOA', NTERM_GOA, I2_GOA, J_GOA, GOA )
      REWIND (SCR(1))
      WRITE(SCR(1)) NTERM_GOA
      DO K=1,NTERM_GOA
         WRITE(SCR(1)) I2_GOA(K),J_GOA(K),GOA(K)
      ENDDO  

! Reallocate memory to GOA based on the NTERM_GOA counted above and read values from scratch file into GOA arrays

      WRITE(SC1, * ) '    Reallocate GOA'
      WRITE(SC1, * )                                       ! Advance 1 line for the screen messages         
      WRITE(SC1,12345) '       Deallocate GOA'   ;   CALL DEALLOCATE_SPARSE_MAT ( 'GOA' )
      CALL DEALLOCATE_L2_GOA_2
      WRITE(SC1,12345) '       Allocate   GOA'   ;   CALL ALLOCATE_SPARSE_MAT ( 'GOA', NDOFO, NTERM_GOA, SUBR_NAME )

      REWIND (SCR(1))
      SCRFIL(1:)  = ' '
      SCRFIL(1:9) = 'SCRATCH-991'
      MESSAG = 'SCRATCH: GOA ROW/COL/VAL'
      NTERM_READ = 'Y'
      OPND       = 'Y'
      CLOSE_IT   = 'Y'
      CLOSE_STAT = 'DELETE  '
      CALL READ_MATRIX_1 ( SCRFIL, SCR(1), OPND, CLOSE_IT, CLOSE_STAT, MESSAG, 'GOA', NTERM_GOA, NTERM_READ, NDOFO,                   &
                           I_GOA, J_GOA, GOA)

      CALL FILE_CLOSE ( SCR(1), SCRFIL, 'DELETE', 'Y' )

! Print out constraint matrix GOA, if requested

      IF ( PRTGOA == 1) THEN
         IF (NTERM_GOA > 0) THEN
            CALL WRITE_SPARSE_CRS ( 'CONSTRAINT MATRIX GOA', 'O ', 'A ', NTERM_GOA, NDOFO, I_GOA, J_GOA, GOA )
         ENDIF
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 2092 FORMAT(4X,A44,20X,I2,':',I2,':',I2,'.',I3)

 2504 FORMAT(' *ERROR  2504: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' THE NAME OF MATRIX THAT HAS BEEN DECOMPOSED INTO TRIANGULAR FACTORS SHOULD BE "KOO".'                 &
                    ,/,14X,',HOWEVER, IT IS NAMED "',A,'". CANNOT CONTINUE')

 2904 FORMAT(/,23X,'DECOMPOSED KOO MATRIX UPPER TRIANGULAR FACTOR IN BAND FORM REQUIRED BY LAPACK ROUTINE'                         &
            ,/,7X,'1',12X,'2',12X,'3',12X,'4',12X,'5',12X,'6',12X,'7',12X,'8',12X,'9',12X,'10')    

 9892 FORMAT('               THIS IS FOR ROW AND COL IN THE MATRIX FOR GRID POINT ',I8,' COMPONENT ',I3)

 9991 FORMAT(' *ERROR  9991: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' SOLLIB = ',A,' NOT PROGRAMMED ',A)

12345 FORMAT("+",A,10X)

22345 FORMAT("+",3X,A,I8,' of ',I8) 

! **********************************************************************************************************************************
 
      END SUBROUTINE SOLVE_GOA        
