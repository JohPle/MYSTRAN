! ##################################################################################################################################

   MODULE SYM_MAT_DECOMP_IntMKL_Interface

   INTERFACE

      SUBROUTINE SYM_MAT_DECOMP_IntMKL ( MAT_NAME, HANDLE, MAT_TYPE, NROWS, NTERMS, I_MAT, J_MAT, MAT, DETERMINANT, CALC_INERTIA,  &

                                         INERTIA, IER_DECOMP ) 

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC       
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  MKLMATST, MKLSTATS
      USE MKL_DSS
      USE SUBR_BEGEND_LEVELS, ONLY    :  SYM_MAT_DECOMP_IntMKL_BEGEND

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT):: HANDLE

      CHARACTER(LEN=*), INTENT(IN)    :: CALC_INERTIA      ! If Y then calculate matrix inertia (needed for eigen analyses)
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Matrix name
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_TYPE          ! Matrix type to use in routine DSS_FACTOR_REAL 

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in MAT
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of matrix terms that should be in MAT
      INTEGER(LONG), INTENT(IN)       :: I_MAT(NROWS+1)    ! Row numbers for terms in matrix MAT
      INTEGER(LONG), INTENT(IN)       :: J_MAT(NTERMS)     ! Col numbers for terms in matrix MAT
      INTEGER(LONG), INTENT(OUT)      :: IER_DECOMP        ! Overall error indicator
      INTEGER(LONG), PARAMETER        :: BUFLEN = 20
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SYM_MAT_DECOMP_IntMKL_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: MAT(NTERMS)       ! Real nonzeros in the input matrix
      REAL(DOUBLE), INTENT(OUT)       :: DETERMINANT       ! Determinant of MAT
      REAL(DOUBLE), INTENT(OUT)       :: INERTIA(3)        ! Matrix inertia

      END SUBROUTINE SYM_MAT_DECOMP_IntMKL

   END INTERFACE

   END MODULE SYM_MAT_DECOMP_IntMKL_Interface

