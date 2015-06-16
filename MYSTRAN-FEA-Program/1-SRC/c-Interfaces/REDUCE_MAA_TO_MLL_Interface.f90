! ##################################################################################################################################

   MODULE REDUCE_MAA_TO_MLL_Interface

   INTERFACE

      SUBROUTINE REDUCE_MAA_TO_MLL ( PART_VEC_A_LR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L2M, L2N, LINK2M, LINK2N, L2M_MSG, L2N_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, NDOFL, NDOFR, NTERM_MAA, NTERM_MLL, NTERM_MRL, NTERM_MRR, &
                                         SOL_NAME
      USE PARAMS, ONLY                :  EPSIL
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_MAA_TO_MLL_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_MAA, J_MAA, MAA, I_MLL, J_MLL, MLL, I_MRL, J_MRL, MRL, I_MRR, J_MRR, MRR,               &
                                         SYM_MAA, SYM_MLL, SYM_MRL, SYM_MRR
      USE SCRATCH_MATRICES

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: PART_VEC_A_LR(NDOFA)! Partitioning vector (F set into A and O sets) 
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_MAA_TO_MLL_BEGEND

      END SUBROUTINE REDUCE_MAA_TO_MLL

   END INTERFACE

   END MODULE REDUCE_MAA_TO_MLL_Interface

