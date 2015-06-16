      MODULE SOLVE_GMN_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE SOLVE_GMN

      USE OURTIM_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE PARTITION_SS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE PARTITION_SS_Interface
      USE OUTA_HERE_Interface
      USE ALLOCATE_L2_GMN_2_Interface
      USE WRITE_MATRIX_1_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_L2_GMN_2_Interface
      USE ALLOCATE_FULL_MAT_Interface
      USE SPARSE_CRS_TO_FULL_Interface
      USE GET_GRID_AND_COMP_Interface
      USE OPNERR_Interface
      USE FILE_CLOSE_Interface
      USE GET_SPARSE_CRS_COL_Interface
      USE DEALLOCATE_FULL_MAT_Interface
      USE READ_MATRIX_2_Interface
      USE SORT_INT2_REAL1_Interface
      USE READ_MATRIX_1_Interface

      END MODULE SOLVE_GMN_USE_IFs
