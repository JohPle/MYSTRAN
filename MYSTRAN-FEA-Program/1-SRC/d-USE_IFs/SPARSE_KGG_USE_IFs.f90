      MODULE SPARSE_KGG_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE SPARSE_KGG

      USE OURTIM_Interface
      USE OUTA_HERE_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE FILE_OPEN_Interface
      USE OPNERR_Interface
      USE FILERR_Interface
      USE TDOF_COL_NUM_Interface
      USE GET_ARRAY_ROW_NUM_Interface
      USE GET_GRID_NUM_COMPS_Interface
      USE SORT_INT1_REAL1_Interface
      USE KGG_SINGULARITY_PROC_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE AUTOSPC_SUMMARY_MSGS_Interface
      USE TDOF_PROC_Interface
      USE FILE_CLOSE_Interface

      END MODULE SPARSE_KGG_USE_IFs
