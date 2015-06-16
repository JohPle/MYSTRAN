! ##################################################################################################################################

      SUBROUTINE FBS_IntMKL ( HANDLE, NROWS, RHS ) 

! FBS_IntMKL performs the forward-backward substitution to get displacements after the stiffness matrix has been decomposed using
! subr SYM_MAT_DECOMP_IntMKL (which calls on the Intel Math Kernel Library routines)

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE MKL_DSS
      USE SUBR_BEGEND_LEVELS, ONLY    :  FBS_IntMKL_BEGEND

      USE FBS_IntMKL_USE_IFs

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT):: HANDLE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'FBS_IntMKL'

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Dimension of RHS
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: IER               ! Intel MKL error code (see Intel MKL documentation for values)
      INTEGER(LONG), PARAMETER        :: NUM_RHS     = 1   ! Number of solution vectors to get
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FBS_IntMKL_BEGEND

      REAL(DOUBLE), INTENT(INOUT)     :: RHS(NROWS)        ! RHS
      REAL(DOUBLE)                    :: SOLN(NROWS)       ! Solution

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Solve for RHS

      IER = DSS_SOLVE_REAL ( HANDLE, MKL_DSS_DEFAULTS, RHS, NUM_RHS, SOLN )

      IF (IER /= 0) THEN
         FATAL_ERR = FATAL_ERR + 1
         CALL IntMKL_ERROR_MSGS ( IER )
         CALL OUTA_HERE ( 'Y')
      ELSE
         DO I=1,NROWS
            RHS(I) = SOLN(I)
         ENDDO
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF
 
      RETURN

! **********************************************************************************************************************************

      END SUBROUTINE FBS_IntMKL
