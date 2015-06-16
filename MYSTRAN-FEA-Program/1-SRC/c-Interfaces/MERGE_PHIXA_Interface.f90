! ##################################################################################################################################

   MODULE MERGE_PHIXA_Interface

   INTERFACE

      SUBROUTINE MERGE_PHIXA ( PART_VEC_A_LR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, NDOFR, NVEC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VEC
      USE SPARSE_MATRICES, ONLY       :  I_DLR , J_DLR , DLR , I_IRR , J_IRR , IRR , I_PHIXA, J_PHIXA, PHIXA
      USE SUBR_BEGEND_LEVELS, ONLY    :  MERGE_PHIXA_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: PART_VEC_A_LR(NDOFA)! Partitioning vector (N set into F and S sets) 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MERGE_PHIXA_BEGEND
       
      END SUBROUTINE MERGE_PHIXA

   END INTERFACE

   END MODULE MERGE_PHIXA_Interface

