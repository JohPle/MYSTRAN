      MODULE SOLVE_GOA_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE SOLVE_GOA

      USE OURTIM_Interface
      USE OUTA_HERE_Interface
      USE OPNERR_Interface
      USE FILE_CLOSE_Interface
      USE GET_SPARSE_CRS_ROW_Interface
      USE FBS_LAPACK_Interface
      USE FBS_IntMKL_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE ALLOCATE_L2_GOA_2_Interface
      USE READ_MATRIX_2_Interface
      USE SORT_INT2_REAL1_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_L2_GOA_2_Interface
      USE READ_MATRIX_1_Interface
      USE WRITE_SPARSE_CRS_Interface

      END MODULE SOLVE_GOA_USE_IFs
