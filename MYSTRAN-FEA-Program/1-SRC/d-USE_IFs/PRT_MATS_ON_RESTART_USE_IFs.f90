      MODULE PRT_MATS_ON_RESTART_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE PRT_MATS_ON_RESTART

      USE OURTIM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE READ_MATRIX_1_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE FILE_OPEN_Interface
      USE ALLOCATE_COL_VEC_Interface
      USE READERR_Interface
      USE OUTA_HERE_Interface
      USE WRITE_VECTOR_Interface
      USE FILE_CLOSE_Interface
      USE DEALLOCATE_COL_VEC_Interface
      USE GET_MATRIX_DIAG_STATS_Interface

      END MODULE PRT_MATS_ON_RESTART_USE_IFs
