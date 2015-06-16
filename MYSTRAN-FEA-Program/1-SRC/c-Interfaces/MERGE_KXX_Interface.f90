! ##################################################################################################################################

   MODULE MERGE_KXX_Interface

   INTERFACE

      SUBROUTINE MERGE_KXX  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFR, NTERM_KRRcb, NTERM_KXX  , NVEC
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  PRTKXX
      USE EIGEN_MATRICES_1, ONLY      :  GEN_MASS, EIGEN_VAL
      USE SPARSE_MATRICES , ONLY      :  I_KRRcb, J_KRRcb, KRRcb, I_KXX  , J_KXX  , KXX  
      USE SUBR_BEGEND_LEVELS, ONLY    :  MERGE_KXX_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MERGE_KXX_BEGEND

      END SUBROUTINE MERGE_KXX

   END INTERFACE

   END MODULE MERGE_KXX_Interface

