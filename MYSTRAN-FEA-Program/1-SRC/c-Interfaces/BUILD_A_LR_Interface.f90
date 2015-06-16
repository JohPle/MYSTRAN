! ##################################################################################################################################

   MODULE BUILD_A_LR_Interface

   INTERFACE

      SUBROUTINE BUILD_A_LR ( COL_NUM )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFL, NDOFA, NDOFR, NVEC, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BUILD_A_LR_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  PRTDISP
      USE COL_VECS, ONLY              :  UL_COL, UA_COL, UR_COL
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: COL_NUM
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BUILD_A_LR_BEGEND

      END SUBROUTINE BUILD_A_LR

   END INTERFACE

   END MODULE BUILD_A_LR_Interface

