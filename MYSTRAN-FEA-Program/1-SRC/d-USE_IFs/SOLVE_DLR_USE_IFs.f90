      MODULE SOLVE_DLR_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE SOLVE_DLR

      USE OURTIM_Interface
      USE SYM_MAT_DECOMP_LAPACK_Interface
      USE OUTA_HERE_Interface
      USE SYM_MAT_DECOMP_IntMKL_Interface
      USE SPARSE_MAT_DIAG_ZEROS_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE CRS_NONSYM_TO_CRS_SYM_Interface
      USE OPNERR_Interface
      USE FILE_CLOSE_Interface
      USE GET_SPARSE_CRS_ROW_Interface
      USE FBS_LAPACK_Interface
      USE FBS_IntMKL_Interface
      USE deallocate_sparse_mat_Interface
      USE ALLOCATE_L6_2_Interface
      USE READ_MATRIX_2_Interface
      USE GET_I_MAT_FROM_I2_MAT_Interface
      USE MATTRNSP_SS_Interface
      USE WRITE_SPARSE_CRS_Interface

      END MODULE SOLVE_DLR_USE_IFs
