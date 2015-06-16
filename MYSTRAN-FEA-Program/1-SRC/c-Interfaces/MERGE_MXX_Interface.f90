! ##################################################################################################################################

   MODULE MERGE_MXX_Interface

   INTERFACE

      SUBROUTINE MERGE_MXX  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFR, NVEC, NTERM_MRRcb, NTERM_MRRcbn, NTERM_MRN, NTERM_MXX,    &
                                         NTERM_MXXn
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  PRTMXX, SPARSTOR
      USE EIGEN_MATRICES_1, ONLY      :  GEN_MASS
      USE SPARSE_MATRICES, ONLY       :  SYM_MRRcbn, SYM_MRN  , SYM_MXX  , SYM_MXXn
      USE SPARSE_MATRICES, ONLY       :  I_MRRcb, J_MRRcb, MRRcb, I_MRRcbn, J_MRRcbn, MRRcbn, I_MRN  , J_MRN  , MRN  ,             &
                                         I_MXX  , J_MXX  , MXX  , I_MXXn  , J_MXXn  , MXXn
      USE SUBR_BEGEND_LEVELS, ONLY    :  MERGE_MXX_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MERGE_MXX_BEGEND

      END SUBROUTINE MERGE_MXX

   END INTERFACE

   END MODULE MERGE_MXX_Interface

