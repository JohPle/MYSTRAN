      MODULE SPARSE_MGG_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE SPARSE_MGG

      USE OURTIM_Interface
      USE OUTA_HERE_Interface
      USE FILE_OPEN_Interface
      USE GET_ARRAY_ROW_NUM_Interface
      USE GET_GRID_NUM_COMPS_Interface
      USE SORT_INT1_REAL1_Interface
      USE ARRAY_SIZE_ERROR_1_Interface
      USE MGGS_MASS_MATRIX_Interface
      USE MATADD_SSS_NTERM_Interface
      USE ALLOCATE_SCR_CRS_MAT_Interface
      USE MATADD_SSS_Interface
      USE ALLOCATE_L1_MGG_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_SCR_MAT_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE FILE_CLOSE_Interface
      USE GET_GRID_6X6_MASS_Interface

      END MODULE SPARSE_MGG_USE_IFs
