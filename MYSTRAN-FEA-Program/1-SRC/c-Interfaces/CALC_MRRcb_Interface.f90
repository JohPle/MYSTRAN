! ##################################################################################################################################

   MODULE CALC_MRRcb_Interface

   INTERFACE

      SUBROUTINE CALC_MRRcb

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFL, NDOFR, NTERM_DLR, NTERM_MLL, NTERM_MRL, NTERM_MRR,        &
                                         NTERM_MRRcb, NTERM_MRRcbn
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE
      USE PARAMS, ONLY                :  SPARSTOR, WTMASS
      USE RIGID_BODY_DISP_MATS, ONLY  :  TR6_MEFM
      USE MODEL_STUF, ONLY            :  MEFM_RB_MASS
      USE SPARSE_MATRICES , ONLY      :  SYM_DLR, SYM_MLL, SYM_MRL, SYM_MRR, SYM_MRRcb

      USE SPARSE_MATRICES , ONLY      :  I_MLL  , J_MLL  , MLL  , I_MRL  , J_MRL  , MRL  , I_MRR  , J_MRR  , MRR  ,                &
                                         I_DLR  , J_DLR  , DLR  , I_DLRt , J_DLRt , DLRt , I_MRRcb, J_MRRcb, MRRcb,                &
                                         SYM_MRRcb

      USE SCRATCH_MATRICES
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_MRRcb_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_MRRcb_BEGEND

      END SUBROUTINE CALC_MRRcb

   END INTERFACE

   END MODULE CALC_MRRcb_Interface

