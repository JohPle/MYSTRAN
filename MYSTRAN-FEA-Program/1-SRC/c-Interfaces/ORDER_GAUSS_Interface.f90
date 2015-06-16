! ##################################################################################################################################

   MODULE ORDER_GAUSS_Interface

   INTERFACE

      SUBROUTINE ORDER_GAUSS ( KORDER, SSS, HHH )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MAX_ORDER_GAUSS, MEFE
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ORDER_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO
      USE CONSTANTS_GAUSS, ONLY       :  HHV, SSV
      USE MODEL_STUF, ONLY            :  EMG_IFE, ERR_SUB_NAM, NUM_EMG_FATAL_ERRS
  
      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: KORDER               ! Gaussian integration order to use
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ORDER_BEGEND
  
      REAL(DOUBLE) ,INTENT(OUT)       :: SSS(MAX_ORDER_GAUSS) ! Gauss abscissa's
      REAL(DOUBLE) ,INTENT(OUT)       :: HHH(MAX_ORDER_GAUSS) ! Gauss weight coeffs
  
      END SUBROUTINE ORDER_GAUSS

   END INTERFACE

   END MODULE ORDER_GAUSS_Interface

