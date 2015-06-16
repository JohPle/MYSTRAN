! ##################################################################################################################################

   MODULE REDUCE_MNN_TO_MFF_Interface

   INTERFACE

      SUBROUTINE REDUCE_MNN_TO_MFF ( PART_VEC_N_FS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L2S, LINK2S, L2S_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFN, NDOFF, NDOFS, NTERM_MNN, NTERM_MFF, NTERM_MFS, NTERM_MSS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_MNN_TO_MFF_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_MNN, J_MNN, MNN, I_MFF, J_MFF, MFF, I_MFS, J_MFS, MFS, I_MSF, J_MSF, MSF,               &
                                         I_MSS, J_MSS, MSS
      USE SPARSE_MATRICES, ONLY       :  SYM_MNN, SYM_MFF, SYM_MFS, SYM_MSS
      USE SCRATCH_MATRICES
 
      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: PART_VEC_N_FS(NDOFN)   ! Partitioning vector (N set into F and S sets) 
      INTEGER(LONG), PARAMETER        :: NUM1        = 1        ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2        ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_MNN_TO_MFF_BEGEND

      END SUBROUTINE REDUCE_MNN_TO_MFF

   END INTERFACE

   END MODULE REDUCE_MNN_TO_MFF_Interface

