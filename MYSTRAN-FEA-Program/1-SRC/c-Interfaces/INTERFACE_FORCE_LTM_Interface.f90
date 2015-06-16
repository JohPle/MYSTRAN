! ##################################################################################################################################

   MODULE INTERFACE_FORCE_LTM_Interface

   INTERFACE

      SUBROUTINE INTERFACE_FORCE_LTM

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFR, NTERM_KRRcb, NTERM_KRRcbn, NTERM_MRRcbn, NTERM_MRN  ,     &
                                         NTERM_IF_LTM  , NVEC
      USE PARAMS, ONLY                :  PRTIFLTM, SPARSTOR
      USE TIMDAT, ONLY                :  TSEC

      USE SPARSE_MATRICES, ONLY       :  SYM_KRRcb, SYM_KRRcbn, SYM_MRN  , SYM_MRRcbn, SYM_IF_LTM  

      USE SPARSE_MATRICES, ONLY       :  I_MRRcbn   , J_MRRcbn   , MRRcbn   , I_MRN      , J_MRN      , MRN      ,                 &
                                         I_KRRcb    , J_KRRcb    , KRRcb    , I_KRRcbn   , J_KRRcbn   , KRRcbn   ,                 &
                                         I_IF_LTM   , J_IF_LTM   , IF_LTM   

      USE SCRATCH_MATRICES, ONLY      :  I_CRS1, J_CRS1, CRS1

      USE SUBR_BEGEND_LEVELS, ONLY    :  INTERFACE_FORCE_LTM_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = INTERFACE_FORCE_LTM_BEGEND

      END SUBROUTINE INTERFACE_FORCE_LTM

   END INTERFACE

   END MODULE INTERFACE_FORCE_LTM_Interface

