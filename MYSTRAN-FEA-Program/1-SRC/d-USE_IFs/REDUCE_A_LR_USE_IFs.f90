      MODULE REDUCE_A_LR_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE REDUCE_A_LR

      USE OURTIM_Interface
      USE PARTITION_VEC_Interface
      USE REDUCE_KAA_TO_KLL_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE REDUCE_MAA_TO_MLL_Interface
      USE REDUCE_PA_TO_PL_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE GET_MATRIX_DIAG_STATS_Interface
      USE ALLOCATE_RBGLOBAL_Interface
      USE TDOF_COL_NUM_Interface
      USE STIFF_MAT_EQUIL_CHK_Interface
      USE DEALLOCATE_RBGLOBAL_Interface
      USE REDUCE_KAAD_TO_KLLD_Interface

      END MODULE REDUCE_A_LR_USE_IFs
