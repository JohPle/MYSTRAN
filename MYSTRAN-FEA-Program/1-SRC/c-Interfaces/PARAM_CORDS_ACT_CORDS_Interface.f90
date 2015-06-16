! ##################################################################################################################################

   MODULE PARAM_CORDS_ACT_CORDS_Interface

   INTERFACE

      SUBROUTINE PARAM_CORDS_ACT_CORDS ( NROW, IORD, XEP, XEA )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_ORDER_GAUSS
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  TYPE, XEL
      USE SUBR_BEGEND_LEVELS, ONLY    :  PARAM_CORDS_ACT_CORDS_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: IORD              ! Gaussian integration order to be used in obtaining the PSH shape fcns
      INTEGER(LONG), INTENT(IN)       :: NROW              ! Number of rows in XEP, XEA
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PARAM_CORDS_ACT_CORDS_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: XEP(NROW,3)       ! Parametric coords of NCOL points
      REAL(DOUBLE), INTENT(OUT)       :: XEA(NROW,3)       ! Actual local element coords corresponding to XEP

      END SUBROUTINE PARAM_CORDS_ACT_CORDS

   END INTERFACE

   END MODULE PARAM_CORDS_ACT_CORDS_Interface

