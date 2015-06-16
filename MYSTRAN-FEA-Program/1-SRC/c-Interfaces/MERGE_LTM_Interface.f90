! ##################################################################################################################################

   MODULE MERGE_LTM_Interface

   INTERFACE

      SUBROUTINE MERGE_LTM  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFR, NTERM_CG_LTM, NTERM_IF_LTM, NTERM_LTM, NUM_CB_DOFS
      USE TIMDAT, ONLY                :  TSEC
      USE SPARSE_MATRICES, ONLY       :  I_CG_LTM, J_CG_LTM, CG_LTM, I_IF_LTM, J_IF_LTM, IF_LTM, I_LTM, J_LTM, LTM
      USE SUBR_BEGEND_LEVELS, ONLY    :  MERGE_LTM_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MERGE_LTM_BEGEND

      END SUBROUTINE MERGE_LTM

   END INTERFACE

   END MODULE MERGE_LTM_Interface

