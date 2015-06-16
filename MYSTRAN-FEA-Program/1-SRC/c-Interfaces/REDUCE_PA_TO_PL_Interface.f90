! ##################################################################################################################################

   MODULE REDUCE_PA_TO_PL_Interface

   INTERFACE

      SUBROUTINE REDUCE_PA_TO_PL ( PART_VEC_A_LR, PART_VEC_SUB )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, NDOFL, NDOFR, NSUB, NTERM_GOA, NTERM_PA, NTERM_PL, NTERM_PR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_PA_TO_PL_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE SPARSE_MATRICES, ONLY       :  I_PA, J_PA, PA, I_PL, J_PL, PL, I_PR, J_PR, PR, I_GOA, J_GOA, GOA, I_GOAt, J_GOAt, GOAt 
      USE SPARSE_MATRICES, ONLY       :  SYM_PA, SYM_PL, SYM_PR
 
      IMPLICIT NONE
               
      INTEGER(LONG), INTENT(IN)        :: PART_VEC_A_LR(NDOFA)! Partitioning vector (F set into A and O sets) 
      INTEGER(LONG), INTENT(IN)        :: PART_VEC_SUB(NSUB)  ! Partitioning vector (1's for all subcases) 
      INTEGER(LONG), PARAMETER         :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER         :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER         :: SUBR_BEGEND = REDUCE_PA_TO_PL_BEGEND

      END SUBROUTINE REDUCE_PA_TO_PL

   END INTERFACE

   END MODULE REDUCE_PA_TO_PL_Interface

