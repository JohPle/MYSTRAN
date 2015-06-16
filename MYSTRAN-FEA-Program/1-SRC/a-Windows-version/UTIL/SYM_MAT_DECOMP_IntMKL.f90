! ##################################################################################################################################

      SUBROUTINE SYM_MAT_DECOMP_IntMKL ( MAT_NAME, HANDLE, MAT_TYPE, NROWS, NTERMS, I_MAT, J_MAT, MAT, DETERMINANT, CALC_INERTIA,  &
                                         INERTIA, IER_DECOMP ) 

! Defines matrix structure, reorders and decomposes input matrix MAT_NAME using the Intel Math kernel Library (MKL)

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC       
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  MKLMATST, MKLSTATS
      USE MKL_DSS
      USE SUBR_BEGEND_LEVELS, ONLY    :  SYM_MAT_DECOMP_IntMKL_BEGEND

      USE SYM_MAT_DECOMP_IntMKL_USE_IFs

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT):: HANDLE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'SYM_MAT_DECOMP_IntMKL'
      CHARACTER(LEN=*), INTENT(IN)    :: CALC_INERTIA      ! If Y then calculate matrix inertia (needed for eigen analyses)
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Matrix name
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_TYPE          ! Matrix type to use in routine DSS_FACTOR_REAL 
      CHARACTER( 54*BYTE)             :: MODNAM            ! Name to write to screen
      CHARACTER(20*BYTE)              :: DSS_NAME          ! Name of DSS routine
      CHARACTER(15*BYTE)              :: STAT_IN


      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in MAT
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of matrix terms that should be in MAT
      INTEGER(LONG), INTENT(IN)       :: I_MAT(NROWS+1)    ! Row numbers for terms in matrix MAT
      INTEGER(LONG), INTENT(IN)       :: J_MAT(NTERMS)     ! Col numbers for terms in matrix MAT
      INTEGER(LONG), INTENT(OUT)      :: IER_DECOMP        ! Overall error indicator
      INTEGER(LONG), PARAMETER        :: BUFLEN = 20
      INTEGER(LONG)                   :: BUF(BUFLEN)
      INTEGER(LONG)                   :: PERM(1)
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: IntMKL_IER        ! Intel MKL error code (see MKL documentation for values)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SYM_MAT_DECOMP_IntMKL_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: MAT(NTERMS)       ! Real nonzeros in the input matrix
      REAL(DOUBLE), INTENT(OUT)       :: DETERMINANT       ! Determinant of MAT
      REAL(DOUBLE), INTENT(OUT)       :: INERTIA(3)        ! Matrix inertia
      REAL(DOUBLE)                    :: Peak_mem
      REAL(DOUBLE)                    :: Factor_mem
      REAL(DOUBLE)                    :: STAT_OUT(5)
      REAL(DOUBLE)                    :: TS,TE             ! Start and end times for cpu time calc

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      WRITE(SC1,*) '   Intel Math Kernel Library (MKL) symmetric matrix decomposition:'
      WRITE(SC1,*) '   --------------------------------------------------------------'
      WRITE(F06,*)
      WRITE(F06,*) '   Intel Math Kernel Library (MKL) symmetric matrix decomposition:'
      WRITE(F06,*) '   --------------------------------------------------------------'
! Initialize

      DETERMINANT = ZERO

      DO I=1,3
         INERTIA(I) = ZERO
      ENDDO

      DO I=1,5
         STAT_OUT(I) = ZERO
      ENDDO

      IER_DECOMP = 0
      FACTORED_MATRIX(1:) = 'x'

! Define the nonzero structure of the matrix

      CALL CPU_TIME ( TS )
      IF (MKLMATST == 'SYM   ') THEN
         IntMKL_IER = DSS_DEFINE_STRUCTURE ( HANDLE, MKL_DSS_SYMMETRIC    , I_MAT, NROWS, NROWS, J_MAT, NTERMS )
      ELSE
         IntMKL_IER = DSS_DEFINE_STRUCTURE ( HANDLE, MKL_DSS_NON_SYMMETRIC, I_MAT, NROWS, NROWS, J_MAT, NTERMS )
      ENDIF
      CALL CPU_TIME ( TE )

      CALL OURTIM
      WRITE(SC1,911) HOUR,MINUTE,SEC,SFRAC
      WRITE(F06,912) TE-TS
      IF (IntMKL_IER .NE. MKL_DSS_SUCCESS) THEN
         IER_DECOMP = 2
         DSS_NAME = 'DSS_DEFINE_STRUCTURE'
      ENDIF

! Reorder the matrix

      IF (IER_DECOMP == 0) THEN

         PERM(1) =0
         CALL CPU_TIME ( TS )
         IntMKL_IER = DSS_REORDER ( HANDLE, MKL_DSS_DEFAULTS, PERM )
         CALL CPU_TIME ( TE )

         CALL OURTIM
         WRITE(SC1,921) HOUR,MINUTE,SEC,SFRAC
         WRITE(F06,922) TE-TS
         IF (IntMKL_IER .NE. MKL_DSS_SUCCESS) THEN
            IER_DECOMP = 3
            DSS_NAME = 'DSS_REORDER         '
         ENDIF

      ENDIF

      IF (MKLSTATS == 'Y') THEN

         STAT_IN = 'Peakmem'
         CALL MKL_CVT_TO_NULL_TERMINATED_STR ( BUF, BUFLEN, STAT_IN )
         IntMKL_IER = DSS_STATISTICS ( HANDLE, MKL_DSS_DEFAULTS, BUF, STAT_OUT )
         Peak_mem = STAT_OUT(1)
         WRITE(SC1,111) Peak_mem/1000.d0
         WRITE(F06,121) Peak_mem/1000.d0

         STAT_IN = 'Factormem'
         CALL MKL_CVT_TO_NULL_TERMINATED_STR ( BUF, BUFLEN, STAT_IN )
         IntMKL_IER = DSS_STATISTICS ( HANDLE, MKL_DSS_DEFAULTS, BUF, STAT_OUT )
         Factor_mem = STAT_OUT(1)
         WRITE(SC1,112) Factor_mem/1000.D0
         WRITE(F06,122) Factor_mem/1000.D0

         WRITE(SC1,113) (Peak_mem + Factor_mem)/1000.D0
         WRITE(F06,123) (Peak_mem + Factor_mem)/1000.D0

      ENDIF

! Factor the matrix

      IF (IER_DECOMP == 0) THEN
         CALL CPU_TIME ( TS )
         IF      (MAT_TYPE == 'POSDEF ') THEN
            IntMKL_IER = DSS_FACTOR_REAL ( HANDLE, MKL_DSS_POSITIVE_DEFINITE, MAT )
         ELSE IF (MAT_TYPE == 'INDEF  ') THEN
            IntMKL_IER = DSS_FACTOR_REAL ( HANDLE, MKL_DSS_INDEFINITE, MAT )
         ELSE IF (MAT_TYPE == 'DEFAULT') THEN
            IntMKL_IER = DSS_FACTOR_REAL ( HANDLE, MKL_DSS_DEFAULTS, MAT )
         ELSE
            FATAL_ERR = FATAL_ERR + 1
            WRITE(ERR,960) SUBR_NAME, MAT_TYPE
            WRITE(F06,960) SUBR_NAME, MAT_TYPE
            CALL OUTA_HERE ( 'Y' )
         ENDIF
         CALL CPU_TIME ( TE )

         CALL OURTIM
         WRITE(SC1,931) HOUR,MINUTE,SEC,SFRAC
         WRITE(F06,932) TE-TS
         IF (IntMKL_IER .NE. MKL_DSS_SUCCESS) THEN
            IER_DECOMP = 4
            DSS_NAME = 'DSS_FACTOR_REAL     '
         ENDIF
      ENDIF

! If no errors,  tag matrix which has been decomposed and get matrix stats

      IF (IER_DECOMP == 0) THEN

         FACTORED_MATRIX = MAT_NAME

         IF (MKLSTATS == 'Y') THEN
            STAT_IN = 'determinant'
            CALL MKL_CVT_TO_NULL_TERMINATED_STR ( BUF, BUFLEN, STAT_IN )
            IntMKL_IER = DSS_STATISTICS ( HANDLE, MKL_DSS_DEFAULTS, buf, STAT_OUT )
            DETERMINANT = STAT_OUT(2)*(10**STAT_OUT(1))
            WRITE(SC1,114) MAT_NAME, DETERMINANT
            WRITE(F06,124) MAT_NAME, DETERMINANT
         ENDIF

         IF (CALC_INERTIA == 'Y') THEN
            STAT_IN = 'inertia'
            CALL MKL_CVT_TO_NULL_TERMINATED_STR ( BUF, BUFLEN, STAT_IN )
            IntMKL_IER = DSS_STATISTICS ( HANDLE, MKL_DSS_DEFAULTS, buf, STAT_OUT )
            DO I=1,3
               INERTIA(I) = STAT_OUT(I)
            ENDDO
            WRITE(SC1,115) MAT_NAME, INERTIA
            WRITE(F06,125) MAT_NAME, INERTIA

         ENDIF

      ELSE

         FATAL_ERR = FATAL_ERR + 1
         WRITE(SC1,'(5X,A,I8,A,A)') 'IntMKL_IER = ', IntMKL_ier,' occurred in MKL routine: ',DSS_NAME
         WRITE(F06,'(5X,A,I8,A,A)') 'IntMKL_IER = ', IntMKL_ier,' occurred in MKL routine: ',DSS_NAME
         WRITE(ERR,959) SUBR_NAME, MAT_NAME, IER_DECOMP, DSS_NAME
         WRITE(F06,959) SUBR_NAME, MAT_NAME, IER_DECOMP, DSS_NAME
         CALL OUTA_HERE ( 'Y' )

      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF
 
      RETURN

! **********************************************************************************************************************************
  111 FORMAT(11X,'peak memory ....................',F11.3,' MB')

  112 FORMAT(11X,'factor memory ..................',F11.3,' MB')

  113 FORMAT(11X,'peak memory + factor memory.....',F11.3,' MB')

  114 FORMAT(11X,'determinant of matrix ',A,' ....',1ES18.6)

  115 FORMAT(11X,'inertia     of matrix ',A,' ....',3F8.0)

  121 FORMAT(11X,'peak memory .............................................',F11.3,' MB')

  122 FORMAT(11X,'factor memory ...........................................',F11.3,' MB')

  123 FORMAT(11X,'peak memory + factor memory..............................',F11.3,' MB')

  124 FORMAT(11X,'determinant of matrix ',A,' .............................',1ES18.6)

  125 FORMAT(11X,'inertia     of matrix ',A,' .............................',3F8.0)

  911 FORMAT(5X,'Define structure using MKLMATST = "SYM   " matrix structure',4X,I2,':',I2,':',I2,'.',I3)

  912 FORMAT(6X,'Define structure using MKLMATST = "SYM   " matrix structure ..',F11.3,' sec')  

  921 FORMAT(5X,'Reorder matrix                                             ',1X,I2,':',I2,':',I2,'.',I3)

  922 FORMAT(6X,'Reorder matrix ...............................................',F11.3,' sec')

  931 FORMAT(5X,'Triangular decomp of matrix using MAT_TYPE = "INDEF  "     ',1X,I2,':',I2,':',I2,'.',I3)

  932 FORMAT(6X,'Triangular decomp of matrix using MAT_TYPE = "INDEF  " .......',F11.3,' sec')

  951 FORMAT(' *ERROR   951: PROCESSING STOPPED DUE TO ERRORS IN Intel Math Kernel Library (MKL) SUBR ',A,' FOR TERM ',I12,' OF ', &
                             I12,' FOR', ' MATRIX ',A)

  959 FORMAT(' *ERROR   959: ERROR IN SUBR ',A,' DURING TRIANGULAR DECOMPOSITION OF MATRIX ',A,' WITH ERROR CODE IER_DECOMP = ',I8 &
                    ,/,14X,' THE ERROR OCCURED IN Intel MKL ROUTINE ',A)

  960 FORMAT(' *ERROR   960: PROGRAMMING ERROR IN SUBROUTINE ',A                                                                   &
                    ,/,14X,' ARGUMENT MAT_TYPE MUST BE EITHER "POSDEF " or "INDEF  " or "DEFAULT" BUT VALUE IS ',A)

! ##################################################################################################################################
 
      END SUBROUTINE SYM_MAT_DECOMP_IntMKL
