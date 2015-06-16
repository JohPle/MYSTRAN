! ##################################################################################################################################

   MODULE COND_NUM_Interface

   INTERFACE

      SUBROUTINE COND_NUM ( MATIN_NAME, N, KD, K_INORM, MATIN_FAC, RCOND )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  ITMAX
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  COND_NUM_BEGEND
      USE LAPACK_LIN_EQN_DPB

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME        ! Name of the matrix whose triang factor is input to this subr
      CHARACTER( 1*BYTE), PARAMETER   :: UPLO      = 'U'   ! Indicates if matrix MATIN_FAC is an upper triangular factor

      INTEGER(LONG), INTENT(IN)       :: N                 ! No. cols in array MATIN_FAC
      INTEGER(LONG), INTENT(IN)       :: KD                ! No. of superdiagonals of KAA

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = COND_NUM_BEGEND

      REAL(DOUBLE),  INTENT(IN)       :: K_INORM           ! The infinity-norm of the matrix whose name is MATIN_NAME     
      REAL(DOUBLE),  INTENT(IN)       :: MATIN_FAC(KD+1,N) ! The upper triangular factor of the matrix whose name is MATIN_NAME
      REAL(DOUBLE),  INTENT(OUT)      :: RCOND             ! The recip of the condition number of matrix whose name is MATIN_NAME

      END SUBROUTINE COND_NUM

   END INTERFACE

   END MODULE COND_NUM_Interface

