! ##################################################################################################################################

   MODULE RENORM_ON_MASS_Interface

   INTERFACE

      SUBROUTINE RENORM_ON_MASS ( NVC, EPS1 )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  NDOFL, BLNK_SUB_NAM, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL, SUPINFO, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  RENORM_ON_MASS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE EIGEN_MATRICES_1 , ONLY     :  GEN_MASS, EIGEN_VEC
      USE MODEL_STUF, ONLY            :  EIG_NORM, MAXMIJ, MIJ_COL, MIJ_ROW
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
  
      IMPLICIT NONE
  
      INTEGER(LONG), INTENT(IN)       :: NVC               ! Number of eigenvectors to be renormalized.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RENORM_ON_MASS_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: EPS1              ! Small number to compare variables against zero

      END SUBROUTINE RENORM_ON_MASS

   END INTERFACE

   END MODULE RENORM_ON_MASS_Interface

