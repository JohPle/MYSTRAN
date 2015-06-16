! ##################################################################################################################################

   MODULE VECINORM_Interface

   INTERFACE

      SUBROUTINE VECINORM ( X, N, X_INORM )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  VECINORM_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: N                 ! Dimension of the input vector X
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = VECINORM_BEGEND

      REAL(DOUBLE),  INTENT(IN)       :: X(N)              ! The input vector for which the infinity norm is calc'd      
      REAL(DOUBLE),  INTENT(OUT)      :: X_INORM           ! The calc'd infinity norm of X

      END SUBROUTINE VECINORM

   END INTERFACE

   END MODULE VECINORM_Interface

