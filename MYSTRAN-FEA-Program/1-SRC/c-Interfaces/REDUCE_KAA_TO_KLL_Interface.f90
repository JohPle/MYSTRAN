! ##################################################################################################################################

   MODULE REDUCE_KAA_TO_KLL_Interface

   INTERFACE

      SUBROUTINE REDUCE_KAA_TO_KLL ( PART_VEC_A_LR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L2K, L2L, LINK2K, LINK2L, L2K_MSG, L2L_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, NDOFL, NDOFR, NTERM_KAA, NTERM_KLL, NTERM_KRL, NTERM_KRR, &
                                         SOL_NAME
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_KAA_TO_KLL_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_KAA, J_KAA, KAA, I_KLL, J_KLL, KLL, I_KRL, J_KRL, KRL, I_KRR, J_KRR, KRR,               &
                                         SYM_KAA, SYM_KLL, SYM_KRL, SYM_KRR
      USE SCRATCH_MATRICES
 
      INTEGER(LONG), INTENT(IN)       :: PART_VEC_A_LR(NDOFA)! Partitioning vector (F set into A and O sets) 
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_KAA_TO_KLL_BEGEND

      END SUBROUTINE REDUCE_KAA_TO_KLL

   END INTERFACE

   END MODULE REDUCE_KAA_TO_KLL_Interface

