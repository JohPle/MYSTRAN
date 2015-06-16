      MODULE REDUCE_G_NM_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE REDUCE_G_NM

      USE OURTIM_Interface
      USE PARTITION_VEC_Interface
      USE SOLVE_GMN_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE REDUCE_KGG_TO_KNN_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE REDUCE_MGG_TO_MNN_Interface
      USE REDUCE_PG_TO_PN_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE GET_MATRIX_DIAG_STATS_Interface
      USE ALLOCATE_RBGLOBAL_Interface
      USE TDOF_COL_NUM_Interface
      USE STIFF_MAT_EQUIL_CHK_Interface
      USE GET_GRID_NUM_COMPS_Interface
      USE AUTOSPC_SUMMARY_MSGS_Interface
      USE REDUCE_KGGD_TO_KNND_Interface
      USE OPNERR_Interface
      USE FILERR_Interface
      USE OUTA_HERE_Interface
      USE GET_ARRAY_ROW_NUM_Interface
      USE FILE_CLOSE_Interface
      USE TDOF_PROC_Interface
      USE FILE_OPEN_Interface
      USE WRITE_DOF_TABLES_Interface

      END MODULE REDUCE_G_NM_USE_IFs
