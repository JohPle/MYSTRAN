! ##################################################################################################################################

   MODULE CALC_MRN_Interface

   INTERFACE

      SUBROUTINE CALC_MRN  

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR,                                                                  &
                                         NDOFL, NDOFR, NTERM_DLR, NTERM_MLL, NTERM_MLLn, NTERM_MPF0, NTERM_MRL, NTERM_MRN,         &
                                         NUM_MLL_DIAG_ZEROS, NVEC
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  SPARSTOR
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VEC
      USE SPARSE_MATRICES , ONLY      :  SYM_DLR, SYM_MLL, SYM_MLLn, SYM_MRL, SYM_MRL, SYM_MRN  

      USE SPARSE_MATRICES , ONLY      :  I_MLL , J_MLL , MLL , I_MLLn, J_MLLn, MLLn, I_MRL , J_MRL , MRL ,                         &
                                         I_DLR , J_DLR , DLR , I_DLRt, J_DLRt, DLRt, I_MRN, J_MRN, MRN,                            &
                                         I_MPF0, J_MPF0, MPF0  
                                         
      USE SCRATCH_MATRICES, ONLY      :  I_CCS1, J_CCS1, CCS1, I_CRS1, J_CRS1, CRS1, I_CRS2, J_CRS2, CRS2, I_CRS3, J_CRS3, CRS3
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_MRN_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_MRN_BEGEND

      END SUBROUTINE CALC_MRN

   END INTERFACE

   END MODULE CALC_MRN_Interface

