! ##################################################################################################################################

   MODULE CALC_KRRcb_Interface

   INTERFACE

      SUBROUTINE CALC_KRRcb

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KRRcb_SDIA,                                     &
                                         NDOFL, NDOFR, NTERM_DLR, NTERM_KRL, NTERM_KRR, NTERM_KRRcb, NTERM_KRRcbs
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  MKLFAC61, MKLSTATS, SOLLIB, SPARSTOR, SUPINFO
      USE SPARSE_MATRICES , ONLY      :  SYM_DLR, SYM_KRL, SYM_KRR
      USE SPARSE_MATRICES , ONLY      :  I_KRL, J_KRL, KRL, I_KRR, J_KRR, KRR, I_DLR, J_DLR, DLR,                                  &
                                         I_KRRcb, J_KRRcb, KRRcb, I_KRRcbs, J_KRRcbs, KRRcbs
      USE SCRATCH_MATRICES
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND
      USE MKL_DSS
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_KRRcb_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_KRRcb_BEGEND

      END SUBROUTINE CALC_KRRcb

   END INTERFACE

   END MODULE CALC_KRRcb_Interface

