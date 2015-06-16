! ##################################################################################################################################
 
      SUBROUTINE LINK3
 
! LINK 3 solves the equation KLL*UL = PL where KLL, UL, PL are the L-set stiffness matrix, displs and loads. It solves the equation
! using one of three methods. For each method the solution is obtained in a 2 step process: (1) the KLL matrix is decomposed into
! triangular factors and (2) UL is solved for by forward-backward substitution (FBS). The 3 methods are:

!   a) The LAPACK freeware code. This code requires KLL to be in banded (NOT sparse) form. LAPACH has the advantage that
!      MYSTRAN contains the LAPACK source code so debugging is easy. Its disadvantage is that banded matrices require much more 
!      memory than sparse storage for large stiffness matrices.

!   b) The commercial library Intel Math Kernel Library (or Intel MKL). It does work with sparse matrices but it is a library
!      and the source is not available. In addition, when it encounters some error it causes MYSTRAN to crash ungracefully.

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L2T, L3A, SC1, LINK2T, LINK3A, L2T_MSG, L3A_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, FATAL_ERR, KLL_SDIA, LINKNO, NDOFL, NSUB,                             &
                                         NTERM_KLL, NTERM_KLLs, NTERM_PL, RESTART, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC       
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO, TEN
      USE PARAMS, ONLY                :  EPSERR, EPSIL, KLLRAT, MKLFAC31, MKLSTATS, RELINK3, RCONDK, SOLLIB, SPARSTOR, SUPINFO,    &
                                         SUPWARN
      USE SPARSE_MATRICES, ONLY       :  I_KLL, I2_KLL, J_KLL, KLL, I_KLLs, I2_KLLs, J_KLLs, KLLs, I_PL, J_PL, PL
      USE LAPACK_DPB_MATRICES, ONLY   :  RES
      USE COL_VECS, ONLY              :  UL_COL, PL_COL
      USE MACHINE_PARAMS, ONLY        :  MACH_EPS, MACH_SFMIN
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE LAPACK_BLAS_AUX
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

! Interface module not needed for subr's DPBTRF and DPBTRS. These are "CONTAIN'ed" in module LAPACK_LIN_EQN_DPB,
! which is "USE'd" above

!     USE LINK3_USE_IFs
                      
      IMPLICIT NONE
 
      TYPE (MKL_DSS_HANDLE)           :: HANDLE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'LINK3'
      CHARACTER(  1*BYTE)             :: CALC_INERTIA      ! If Y then calc matrix inertia when SYM_MAT_DECOMP_IntMKL is called
      CHARACTER(  1*BYTE)             :: CLOSE_IT          ! Input to subr READ_MATRIX_i. 'Y'/'N' whether to close a file or not 
      CHARACTER(  8*BYTE)             :: CLOSE_STAT        ! What to do with file when it is closed
      CHARACTER(  1*BYTE)             :: OPND              ! Input to subr READ_MATRIX_i. 'Y'/'N' whether to open  a file or not 
      CHARACTER(  1*BYTE)             :: L_SET    = 'L '   ! A-set designator
      CHARACTER(  1*BYTE)             :: EQUED             ! 'Y' if the stiff matrix was equilibrated in subr EQUILIBRATE    
      CHARACTER(  1*BYTE)             :: NULL_COL          ! 'Y' if a col of KAO(transpose) is null 
      CHARACTER(  1*BYTE)             :: NTERM_READ        ! 'Y' or 'N' Input to subr READ_MATRIX_1 
      CHARACTER(  4*BYTE)             :: MAT_NAME          ! Name of matrix for printout 
      CHARACTER( 54*BYTE)             :: MODNAM            ! Name to write to screen
 
      INTEGER(LONG)                   :: DEB_PRT(2)        ! Debug numbers to say whether to write ABAND and/or its decomp to output
!                                                            file in called subr SYM_MAT_DECOMP_LAPACK (ABAND = band form of KLL)

      INTEGER(LONG)                   :: IER_DECOMP        ! Overall error indicator
      INTEGER(LONG)                   :: IntMKL_IER        ! Intel MKL error code (see MKL documentation for values)
      INTEGER(LONG)                   :: ISUB              ! DO loop index for subcases 
      INTEGER(LONG)                   :: INFO     = 0      ! Input value for subr SYM_MAT_DECOMP_LAPACK (quit on sing KRRCB)
      INTEGER(LONG)                   :: J,i               ! DO loop index            
      INTEGER(LONG)                   :: OUNT(2)           ! File units to write messages to. Input to subr UNFORMATTED_OPEN  
      INTEGER(LONG)                   :: OPT               ! Option indicator for Intel MKL dss routines
      INTEGER(LONG)                   :: NUM_KLL_DIAG_ZEROS  ! Number of zeros on the diag of KLL
      INTEGER(LONG), PARAMETER        :: P_LINKNO = 2      ! Prior LINK no's that should have run before this LINK can execute

      REAL(DOUBLE)                    :: BETA              ! Multiple for rhs for use in subr FBS
      REAL(DOUBLE)                    :: DEN               ! K_INORM*UL_INORM + PL_INORM
      REAL(DOUBLE)                    :: DETERMINANT       ! Determinant of MAT
      REAL(DOUBLE)                    :: EPS1              ! A small number to compare real zero

      REAL(DOUBLE)                    :: EQUIL_SCALE_FACS(NDOFL)
                                                           ! LAPACK_S values returned from subr SYM_MAT_DECOMP_LAPACK

      REAL(DOUBLE)                    :: INERTIA(3)        ! Matrix inertia
      REAL(DOUBLE)                    :: INOUT_COL(NDOFL)  ! Temp variable for subr FBS
      REAL(DOUBLE)                    :: K_INORM           ! Inf norm of KLL matrix (det in  subr COND_NUM)
      REAL(DOUBLE)                    :: LAP_ERR1          ! Bound on displ error = 2*OMEGAI/RCOND
      REAL(DOUBLE)                    :: OMEGAI            ! RES_INORM/DEN (similar to EPSILON)
      REAL(DOUBLE)                    :: OMEGAI0           ! Upper bound on OMEGAI. OMEGAI0 = 10*NDOFL*MACH_EPS
      REAL(DOUBLE)                    :: PL_INORM          ! Inf norm of load vector
      REAL(DOUBLE)                    :: RES_INORM         ! Inf norm of residual vector R = K*UL - PL 
      REAL(DOUBLE)                    :: TS,TE             ! Start and end times for cpu time calc
      REAL(DOUBLE)                    :: TCRS              ! CU time to do subr CRS_NONSYM_TO CRS_SYM
      REAL(DOUBLE)                    :: RCOND             ! Recrip of cond no. of the KLL. Det in  subr COND_NUM
      REAL(DOUBLE)                    :: UL_INORM          ! Inf norm of displacement vector
 
      INTRINSIC                       :: DABS

!***********************************************************************************************************************************
      LINKNO = 3

      EPS1 = EPSIL(1)

! Set time initializing parameters

      CALL TIME_INIT

! Get date and time, write to screen

      CALL OURDAT
      CALL OURTIM
      WRITE(SC1,152) LINKNO

! Make units for writing errors the screen until we open output files

      OUNT(1) = SC1
      OUNT(2) = SC1

! Make units for writing errors the error file and output file

      OUNT(1) = ERR
      OUNT(2) = F06

! Write info to text files
  
      WRITE(F06,150) LINKNO
      IF (WRT_LOG > 0) THEN
         WRITE(F04,150) LINKNO
      ENDIF
      WRITE(ERR,150) LINKNO

! Read LINK1A file
 
      CALL READ_L1A ( 'KEEP', 'Y' )

! Check COMM for successful completion of prior LINKs

      IF (COMM(P_LINKNO) /= 'C') THEN
         WRITE(ERR,9998) P_LINKNO,P_LINKNO,LINKNO
         WRITE(F06,9998) P_LINKNO,P_LINKNO,LINKNO
         FATAL_ERR = FATAL_ERR + 1
         CALL OUTA_HERE ( 'Y' )                            ! Prior LINK's didn't complete, so quit
      ENDIF

! Make sure SOL is STATICS, BUCKLING or NLSTATIC

      IF ((SOL_NAME(1:7) /= 'STATICS') .AND. (SOL_NAME(1:8) /= 'BUCKLING') .AND. (SOL_NAME(1:8) /= 'NLSTATIC')) THEN
         WRITE(ERR,999) SOL_NAME, 'STATICS or BUCKLING or NLSTATIC'
         WRITE(F06,999) SOL_NAME, 'STATICS or BUCKLING or NLSTATIC'
         CALL OUTA_HERE ( 'Y' )
      ENDIF

!***********************************************************************************************************************************
      MAT_NAME = '    '   ;   IF (SPARSTOR == 'SYM   ') MAT_NAME = 'KLL '   ;   IF (SPARSTOR == 'NONSYM') MAT_NAME = 'KLLs'

! Factor KLL

      DEB_PRT(1) = 34
      DEB_PRT(2) = 35
      IER_DECOMP = 0

      IF ((RESTART == 'Y') .AND. (RELINK3 == 'Y')) THEN
sol_do:  DO
            WRITE(SC1,*) ' Input the value of SOLLIB to use in this restart:'
            READ (*,*) SOLLIB
            IF ((SOLLIB /= 'IntMKL') .AND. (SOLLIB /= 'ZZPACK')) THEN
               WRITE(SC1,*) '  Incorrect SOLLIB. Value must be either IntMKL or ZZPACK'
               WRITE(SC1,*)
               CYCLE sol_do
            ELSE
               EXIT sol_do
            ENDIF
         ENDDO sol_do
      ENDIF

Lib:  IF (SOLLIB == 'ZZPACK') THEN                         ! Use LAPACK

         INFO = 0
         CALL SYM_MAT_DECOMP_LAPACK ( SUBR_NAME, 'KLL', L_SET, NDOFL, NTERM_KLL, I_KLL, J_KLL, KLL, 'Y', KLLRAT, 'Y', RCONDK,      &
                                      DEB_PRT, EQUED, KLL_SDIA, K_INORM, RCOND, EQUIL_SCALE_FACS, INFO )

      ELSE IF (SOLLIB == 'IntMKL') THEN                    ! Use Intel Math Kernel Library (MKL)

         CALC_INERTIA = 'N'
         IF (MKLSTATS == 'Y') THEN
            CALC_INERTIA = 'Y'
         ENDIF

         OPT = MKL_DSS_MSG_LVL_WARNING + MKL_DSS_TERM_LVL_ERROR + MKL_DSS_OOC_VARIABLE
         CALL SPARSE_MAT_DIAG_ZEROS ( 'KLL', NDOFL, NTERM_KLL, I_KLL, J_KLL, NUM_KLL_DIAG_ZEROS )

         CALL CPU_TIME ( TS )
         IntMKL_IER = DSS_CREATE ( HANDLE, opt )
         CALL CPU_TIME ( TE )
         IF      (SPARSTOR == 'SYM   ') THEN

            CALL WRITE_LINK3_INFO
            CALL SYM_MAT_DECOMP_IntMKL ( 'KLL ', HANDLE, MKLFAC31, NDOFL, NTERM_KLL, I_KLL, J_KLL, KLL, DETERMINANT, CALC_INERTIA, &
                                          INERTIA, IER_DECOMP )

         ELSE IF (SPARSTOR == 'NONSYM') THEN

            NTERM_KLLs = (NTERM_KLL  + (NDOFL - NUM_KLL_DIAG_ZEROS))/2
            CALL ALLOCATE_SPARSE_MAT ( 'KLLs', NDOFL, NTERM_KLLs, SUBR_NAME )
            CALL CPU_TIME ( TS )
            CALL CRS_NONSYM_TO_CRS_SYM ( 'KLL', NDOFL, NTERM_KLL, I_KLL, J_KLL, KLL, 'KLLs', NTERM_KLLs, I_KLLs, J_KLLs, KLLs )
            CALL CPU_TIME ( TE )
            TCRS = TE - TS
            IF (DEBUG(105) > 0) THEN
               CALL OURTIM
               MODNAM = 'WRITE KLLs ARRAY TO FILE LINK2T'
               WRITE(SC1,3092) LINKNO,MODNAM,HOUR,MINUTE,SEC,SFRAC
               IF (NTERM_KLLS > 0) THEN
                  CALL WRITE_MATRIX_1 ( LINK2T, L2T, 'Y', 'KEEP', L2T_MSG, 'KLLs', NTERM_KLLs, NDOFL, I_KLLs, J_KLLs, KLLs )
               ENDIF 
            ENDIF

            CALL WRITE_LINK3_INFO
            CALL SYM_MAT_DECOMP_IntMKL ( 'KLLs', HANDLE, MKLFAC31, NDOFL, NTERM_KLLs, I_KLLs, J_KLLs, KLLs, DETERMINANT,           &
                                          CALC_INERTIA, INERTIA, IER_DECOMP )
         ELSE                                           ! Error - incorrect SPARSTOR

            WRITE(ERR,932) SUBR_NAME, SPARSTOR
            WRITE(F06,932) SUBR_NAME, SPARSTOR
            FATAL_ERR = FATAL_ERR + 1
            CALL OUTA_HERE ( 'Y' )

         ENDIF

      ELSE

         FATAL_ERR = FATAL_ERR + 1
         WRITE(ERR,3001) SUBR_NAME, SOLLIB
         WRITE(F06,3001) SUBR_NAME, SOLLIB
         CALL OUTA_HERE ( 'Y' )

      ENDIF Lib

!***********************************************************************************************************************************
!  Allocate col vector arrays for loads, displs and res vector

      CALL ALLOCATE_COL_VEC ( 'UL_COL', NDOFL, SUBR_NAME )
      CALL ALLOCATE_COL_VEC ( 'PL_COL', NDOFL, SUBR_NAME )
      CALL ALLOCATE_LAPACK_MAT ( 'RES', NDOFL, 1, SUBR_NAME )

! Open file for writing displs to.
 
      CALL FILE_OPEN ( L3A, LINK3A, OUNT, 'REPLACE', L3A_MSG, 'WRITE_STIME', 'UNFORMATTED', 'WRITE', 'REWIND', 'Y', 'N', 'Y' )
 
! Loop on subcases

      WRITE(F06,*)
      BETA = ONE
      DO ISUB = 1,NSUB

         CALL OURTIM                                       ! Get the loads for this subcase from I_PL, J_PL, PL and put into PL_COL
         MODNAM = 'GET COL OF PL LOADS FOR                        Subcase'
         WRITE(SC1,3093) LINKNO,MODNAM,ISUB,HOUR,MINUTE,SEC,SFRAC
         DO J=1,NDOFL
            PL_COL(J) = ZERO
         ENDDO
         CALL GET_SPARSE_CRS_COL ( 'PL        ', ISUB, NTERM_PL, NDOFL, NSUB, I_PL, J_PL, PL, BETA, PL_COL, NULL_COL )
         DO J=1,NDOFL
            INOUT_COL(J) = PL_COL(J)
         ENDDO
 
         IF (DEBUG(32) == 1) THEN                          ! DEBUG output of load vector for this subcase, if requested
            WRITE(F06,3020) ISUB
            CALL WRITE_VECTOR ( '      L-SET LOADS      ',' LOAD', NDOFL, PL_COL )
            WRITE(F06,*)
         ENDIF
 
         CALL OURTIM                                       ! Call FBS to solve for displacements for this subcase
         MODNAM = 'FBS - SOLVE FOR RHS ANSWERS FOR                   "'
         WRITE(SC1,3093) LINKNO,MODNAM,ISUB,HOUR,MINUTE,SEC,SFRAC
         WRITE(SC1, * )                                    ! Advance 1 line for the screen messages

         IF      (SOLLIB(1:6) == 'ZZPACK') THEN
            CALL FBS_LAPACK ( EQUED, NDOFL, KLL_SDIA, EQUIL_SCALE_FACS, INOUT_COL )
         ELSE IF (SOLLIB(1:6) == 'IntMKL') THEN
            CALL FBS_IntMKL ( HANDLE, NDOFL, INOUT_COL )
         ELSE
            FATAL_ERR = FATAL_ERR + 1
            WRITE(ERR,3001) SUBR_NAME, SOLLIB
            WRITE(F06,3001) SUBR_NAME, SOLLIB
            CALL OUTA_HERE ( 'Y' )
         ENDIF

         DO J=1,NDOFL
            UL_COL(J) = INOUT_COL(J)
         ENDDO

         IF (DEBUG(33) == 1) THEN                          ! DEBUG output of displs
            WRITE(F06,3022) ISUB
            CALL WRITE_VECTOR ( '      A-SET DISPL      ','DISPL', NDOFL, UL_COL )
            WRITE(F06,*)
         ENDIF
 
         IF (EPSERR == 'Y') THEN                           ! Calculate residual vector, R. Use RES to calculate EPSILON
            CALL OURTIM
            MODNAM = 'CALC  EPSILON ERROR ESTIMATE                      "'
            WRITE(SC1,3093) LINKNO,MODNAM,ISUB,HOUR,MINUTE,SEC,SFRAC
            CALL EPSCALC ( ISUB )
         ENDIF
                                                           ! Calculate the LAPACK error bounds
         IF ((RCONDK == 'Y') .AND. (SOLLIB == 'ZZPACK')) THEN 
            IF (DABS(RCOND) > MACH_SFMIN) THEN
               CALL OURTIM
               MODNAM = 'CALC LAPACK ERROR ESTIMATE                        "'
               WRITE(SC1,3093) LINKNO,MODNAM,ISUB,HOUR,MINUTE,SEC,SFRAC
               CALL VECINORM ( UL_COL, NDOFL,  UL_INORM )
               CALL VECINORM ( PL_COL, NDOFL,  PL_INORM )
               CALL VECINORM ( RES   , NDOFL, RES_INORM )
               DEN = K_INORM*UL_INORM + PL_INORM 
               IF (DABS(DEN) > EPS1) THEN
                  OMEGAI = (RES_INORM)/(DEN)
                  OMEGAI0 = TEN*NDOFL*MACH_EPS
                  LAP_ERR1 = TWO*OMEGAI/RCOND
                  WRITE(F06,3024) ISUB, LAP_ERR1, OMEGAI, RCOND, DEN, RES_INORM, K_INORM, UL_INORM, PL_INORM, OMEGAI0, MACH_EPS
               ELSE
                  WRITE(F06,3026)
               ENDIF
            ELSE
               WARN_ERR = WARN_ERR + 1
               WRITE(ERR,3025) ISUB, RCOND, MACH_SFMIN
               IF (SUPWARN == 'N') THEN 
                  WRITE(F06,3025) ISUB, RCOND, MACH_SFMIN
               ENDIF 
            ENDIF
         ENDIF

         DO J=1,NDOFL                                      ! Write UL to file L3A for this subcase
            WRITE(L3A) UL_COL(J)
         ENDDO

      ENDDO
      CALL DEALLOCATE_SPARSE_MAT ( 'KLLs' )
      WRITE(F06,*)
 
! Dellocate arrays

      CALL OURTIM
      MODNAM = 'DEALLOCATE ARRAYS'
      WRITE(SC1,3092) LINKNO,MODNAM,HOUR,MINUTE,SEC,SFRAC
      WRITE(SC1, * )                                       ! Advance 1 line for the screen messages         

      IF (SOL_NAME(1:8) == 'BUCKLING') THEN
         CONTINUE
      ELSE
         IF (SOL_NAME(1:12) /= 'GEN CB MODEL' ) THEN
            WRITE(SC1,12345) '       Deallocate KLL  '   ;   CALL DEALLOCATE_SPARSE_MAT ( 'KLL' )
         ENDIF
      ENDIF

      WRITE(SC1,12345) '       Deallocate ABAND'      ;   CALL DEALLOCATE_LAPACK_MAT ( 'ABAND' )
      WRITE(SC1,12345) '       Deallocate RES  '      ;   CALL DEALLOCATE_LAPACK_MAT ( 'RES' )
      CALL DEALLOCATE_COL_VEC  ( 'UL_COL' )
      CALL DEALLOCATE_COL_VEC  ( 'PL_COL' )
      WRITE(SC1,12345) '       Deallocate PL   '      ;   CALL DEALLOCATE_SPARSE_MAT ( 'PL' )

      CALL FILE_CLOSE ( L3A, LINK3A, 'KEEP', 'Y' )

! Process is now complete so set COMM(LINKNO)
  
      COMM(LINKNO) = 'C'

! Write data to L1A

      CALL WRITE_L1A ( 'KEEP', 'Y', 'Y' )
  
! Check allocation status of allocatable arrays, if requested

      IF (DEBUG(100) > 0) THEN
         CALL CHK_ARRAY_ALLOC_STAT
         IF (DEBUG(100) > 1) THEN
            CALL WRITE_ALLOC_MEM_TABLE ( 'at the end of '//SUBR_NAME )
         ENDIF
      ENDIF

! Write LINK3 end to F04, F06

      CALL OURTIM
      IF (WRT_LOG > 0) THEN
         WRITE(F04,151) LINKNO
      ENDIF
      WRITE(F06,151) LINKNO

! Close files
  
      IF (( DEBUG(193) == 3) .OR. (DEBUG(193) == 999)) THEN
         CALL FILE_INQUIRE ( 'near end of LINK3' )
      ENDIF

! Write LINK3 end to screen

      WRITE(SC1,153) LINKNO

!***********************************************************************************************************************************
  150 FORMAT(/,' >> LINK',I3,' BEGIN',/)

  151 FORMAT(/,' >> LINK',I3,' END',/)

  152 FORMAT(/,' >> LINK',I3,' BEGIN')

  153 FORMAT(  ' >> LINK',I3,' END')

  932 FORMAT(' *ERROR   932: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' PARAMETER SPARSTOR MUST BE EITHER "SYM" OR "NONSYM" BUT VALUE IS ',A)

  999 FORMAT(' *ERROR   999: INCORRECT SOLUTION IN EXEC CONTROL. SHOULD BE ',A,', BUT IS SOL = ',A)

 3020 FORMAT(//,18X,'LOAD VECTOR FOR SUBCASE ',I8)

 3022 FORMAT(//,18X,'DISPLACEMENTS FOR SUBCASE ',I8,/23X,'LSET DOF',10X,'DISP',14X,'S(J)')

 3024 FORMAT(' *INFORMATION: FOR INTERNAL SUBCASE NUMBER ',I8,' LAPACK ERROR EST (2*OMEGAI/RCOND) = ',1ES13.6,                     &
             ' Gen, slightly > than true err'                                                                                   ,/,&
                                          52X,'................................................................................',/,&
             '                                                    ... OMEGAI                        = ',1ES13.6,                   &
             ' (RES_INORM/DEN)              .'                                                                                  ,/,&
             '                                                    ... RCOND                         = ',1ES13.6,                   &
             ' (Recriprocal of KLL cond num).'                                                                                  ,/,&
             '                                                    ... DEN                           = ',1ES13.6,                   &
             ' (K_INORM*UL_INORM + PL_INORM).'                                                                                  ,/,&
             '                                                    ... RES_INORM                     = ',1ES13.6,                   &
             ' (Inf norm of KLL*UL - PL)    .'                                                                                  ,/,&
             '                                                    ... K_INORM                       = ',1ES13.6,                   &
             ' (Infinity norm of KLL)       .'                                                                                  ,/,&
             '                                                    ... UL_INORM                      = ',1ES13.6,                   &
             ' (Infinity norm of UL displs) .'                                                                                  ,/,&
             '                                                    ... PL_INORM                      = ',1ES13.6,                   &
             ' (Infinity norm of PL loads)  .'                                                                                  ,/,&
             '                                                    ... OMEGAI0 (OMEGAI upper bound)  = ',1ES13.6,                   &
             ' (10*NDOFL*MACH_EPS)          .'                                                                                  ,/,&
             '                                                    ... MACH_EPS                      = ',1ES13.6,                   &
             ' (Machine precision)          .'                                                                                  ,/,&
                                          52X,'................................................................................',/)

 3025 FORMAT(' *WARNING    : CANNOT CALCULATE LAPACK ERROR ESTIMATE FOR INTERNAL SUBCASE NUMBER ',I8                               &
                    ,/,14X,' THE RECIPROCAL OF THE CONDITION NUMBER OF KLL, RCOND         = ',1ES15.6,' CANNOT BE INVERTED.'       &
                    ,/,14X,' IT IS TOO SMALL COMPARED TO MACHINE SAFE MINIMUN (MACH_SFMIN) = ',1ES15.6,/)

 3026 FORMAT(' *INFORMATION: CANNOT CALCULATE OMEGAI. DEN = 0',/)

 3092 FORMAT(1X,I2,'/',A54,8X,2X,I2,':',I2,':',I2,'.',I3)

 3093 FORMAT(1X,I2,'/',A54,I8,2X,I2,':',I2,':',I2,'.',I3)

 3001 FORMAT(' *ERROR  3001: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' SOLLIB = ',A,' NOT PROGRAMMED ',A)

 9998 FORMAT(' *ERROR  9998: COMM ',I3,' INDICATES UNSUCCESSFUL LINK ',I2,' COMPLETION.'                                           &
                    ,/,14X,' FATAL ERROR - CANNOT START LINK ',I2)

12345 FORMAT("+",A,10X)

! ##################################################################################################################################
 
      CONTAINS
 
! ##################################################################################################################################

      SUBROUTINE WRITE_LINK3_INFO

      IMPLICIT NONE

      CHARACTER( 13*BYTE)             :: CHAR_IMEM               ! Char representation of IMEM               in comma format
      CHARACTER( 13*BYTE)             :: CHAR_IMEM6              ! Char representation of IMEM in MB memory
      CHARACTER( 13*BYTE)             :: CHAR_NDOFL              ! Char representation of NDOFL              in comma format
      CHARACTER( 13*BYTE)             :: CHAR_NUM_KLL_DIAG_ZEROS ! Char representation of NUM_KLL_DIAG_ZEROS in comma format
      CHARACTER( 13*BYTE)             :: CHAR_NTERM_KLL          ! Char representation of NTERM_KLL          in comma format
      CHARACTER( 13*BYTE)             :: CHAR_NTERM_KLLs         ! Char representation of NTERM_KLLs         in comma format
      CHARACTER( 13*BYTE)             :: MEM_MSG                 ! Descriptor for the memory message output

      INTEGER(LONG)                   :: IMEM                    ! Integer value of MEM
      INTEGER(LONG)                   :: NUM_CHARS               ! Number of 
      INTEGER(LONG)                   :: NUM_DIGITS              ! Number of 

      REAL(DOUBLE)                    :: MEM                     ! Memory needed to store KLL or KLLs
      REAL(DOUBLE)                    :: PC_DEN                  ! Percent density of the matrix

! **********************************************************************************************************************************
               CALL OURTIM
               MODNAM = 'WRITE KLLs ARRAY TO FILE LINK2T'
               WRITE(SC1,3092) LINKNO,MODNAM,HOUR,MINUTE,SEC,SFRAC

      IF (SOLLIB(1:6) == 'IntMKL') THEN

         CALL OURTIM
         MODNAM = 'SETUP AND DECOMP OF STIFFNESS MATRIX USING INTEL MKL:'
         WRITE(SC1,3092) LINKNO,MODNAM,HOUR,MINUTE,SEC,SFRAC
         WRITE(F06,101)
         WRITE(F06,102)

         IF (SPARSTOR(1:3) == 'SYM') THEN
            WRITE(F06,111) 
         ELSE
            WRITE(F06,112)
         ENDIF

         CALL GET_FORMATTED_INTEGER ( NDOFL             , CHAR_NDOFL             , NUM_CHARS, NUM_DIGITS )
         CALL GET_FORMATTED_INTEGER ( NUM_KLL_DIAG_ZEROS, CHAR_NUM_KLL_DIAG_ZEROS, NUM_CHARS, NUM_DIGITS )
         CALL GET_FORMATTED_INTEGER ( NTERM_KLL         , CHAR_NTERM_KLL         , NUM_CHARS, NUM_DIGITS )

         WRITE(F06,121) CHAR_NDOFL
         WRITE(F06,122) CHAR_NUM_KLL_DIAG_ZEROS

         IF (SPARSTOR(1:3) == 'SYM') THEN

            WRITE(F06,131) CHAR_NTERM_KLL

            PC_DEN = 100.D0*REAL(2*(NTERM_KLL - NDOFL) + NDOFL)/REAL(NDOFL*NDOFL)
            WRITE(F06,140) PC_DEN

            MEM  = 4.D0*(REAL(NDOFL+1)) + 12.D0*REAL(NTERM_KLL)
            CALL WRITE_MEM ( MEM, CHAR_IMEM6, MEM_MSG )
            WRITE(F06,151) CHAR_IMEM6, MEM_MSG

         ELSE

            WRITE(F06,132) CHAR_NTERM_KLL

            PC_DEN = 100.D0*REAL(NTERM_KLL)/REAL(NDOFL*NDOFL)
            WRITE(F06,140) PC_DEN

            MEM  = 4.D0*(REAL(NDOFL+1)) + 12.D0*REAL(NTERM_KLL)
            CALL WRITE_MEM ( MEM, CHAR_IMEM6, MEM_MSG )
            WRITE(F06,152) CHAR_IMEM6, MEM_MSG

            CALL GET_FORMATTED_INTEGER ( NTERM_KLLs, CHAR_NTERM_KLLs, NUM_CHARS, NUM_DIGITS )
            WRITE(F06,131) CHAR_NTERM_KLLs

            MEM  = 4.D0*(REAL(NDOFL+1)) + 12.D0*REAL(NTERM_KLLs)
            CALL WRITE_MEM ( MEM, CHAR_IMEM6, MEM_MSG )
            WRITE(F06,151) CHAR_IMEM6, MEM_MSG

            WRITE(F06,160) TCRS

         ENDIF

      ENDIF

! **********************************************************************************************************************************
  101 FORMAT(5X,'Setup and decomp of stiffness matrix using Intel MKL')

  102 FORMAT(5X,'----------------------------------------------------')

  111 FORMAT(5X,' Input matrix, KLL, is in sparse CRS form with only the upper triangle specified',/)

  112 FORMAT(5X,' Input matrix, KLL, is in sparse CRS form with all terms specified',/)

  121 FORMAT(5X,' Number of rows and columns in the matrix ...................................... = ',A)

  122 FORMAT(5X,' Number of zeros on the diagonal of the matrix ................................. = ',A,/)

  131 FORMAT(5X,' Number of terms in the upper triangle of the matrix ........................... = ',A)

  132 FORMAT(5X,' Number of terms in the whole matrix ........................................... = ',A)

  140 FORMAT(5X,' Density of the matrix ......................................................... = ',F13.3,'%')

  151 FORMAT(5X,' Storage required for the upper triangle portion of the matrix ................. = ',A,A,/)

  152 FORMAT(5X,' Storage required for the completely specified matrix .......................... = ',A,A,/)

  160 FORMAT(5X,' Get upper triangle terms from the whole matrix ................................   ',F13.3,' sec')

 3092 FORMAT(1X,I2,'/',A54,8X,2X,I2,':',I2,':',I2,'.',I3)

! **********************************************************************************************************************************

      END SUBROUTINE WRITE_LINK3_INFO

! ##################################################################################################################################

      SUBROUTINE WRITE_MEM ( MEM, CHAR_IMEM6, MEM_MSG ) 

      IMPLICIT NONE

      CHARACTER( 13*BYTE), INTENT(OUT):: CHAR_IMEM6              ! Char representation of IMEM in MB memory
      CHARACTER( 13*BYTE), INTENT(OUT):: MEM_MSG                 ! Descriptor for the memory message output
      CHARACTER( 13*BYTE)             :: CHAR_IMEM               ! Char representation of IMEM               in comma format

      INTEGER(LONG)                   :: IMEM                    ! Integer value of MEM
      INTEGER(LONG)                   :: NUM_CHARS               ! Number of 
      INTEGER(LONG)                   :: NUM_DIGITS              ! Number of 

      REAL(DOUBLE), INTENT(IN)        :: MEM                     ! Memory needed to store KLL or KLLs

! **********************************************************************************************************************************
      IMEM = CEILING(MEM)
      CALL GET_FORMATTED_INTEGER ( IMEM, CHAR_IMEM, NUM_CHARS, NUM_DIGITS )
      IF (NUM_DIGITS <= 6) THEN                      ! Write memory required in bytes
         CHAR_IMEM6(1:) = CHAR_IMEM(1:)
         MEM_MSG = ' Bytes memory'
      ELSE                                           ! Write memory required in MB
         CHAR_IMEM6(1:)    = ' '
         CHAR_IMEM6( 5:13) = CHAR_IMEM(1:9)
         CHAR_IMEM6(10:10) = '.'
         MEM_MSG = ' MB memory   '
      ENDIF

! **********************************************************************************************************************************

      END SUBROUTINE 

      END SUBROUTINE LINK3






