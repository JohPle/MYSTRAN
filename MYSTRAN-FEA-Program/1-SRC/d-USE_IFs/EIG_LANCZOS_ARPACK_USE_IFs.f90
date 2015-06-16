      MODULE EIG_LANCZOS_ARPACK_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE EIG_LANCZOS_ARPACK

      USE OURTIM_Interface
      USE OUTA_HERE_Interface
      USE MATADD_SSS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE MATADD_SSS_Interface
      USE BANDSIZ_Interface
      USE ALLOCATE_LAPACK_MAT_Interface
      USE BANDGEN_LAPACK_DPB_Interface
      USE BANDGEN_LAPACK_DGB_Interface
      USE WRITE_MATRIX_BY_ROWS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE SPARSE_MAT_DIAG_ZEROS_Interface
      USE CRS_SYM_TO_CRS_NONSYM_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE ALLOCATE_EIGEN1_MAT_Interface
      USE DEALLOCATE_LAPACK_MAT_Interface
      USE GET_GRID_AND_COMP_Interface
      USE INVERT_EIGENS_Interface
      USE CRS_NONSYM_TO_CRS_SYM_Interface
      USE SYM_MAT_DECOMP_IntMKL_Interface

      END MODULE EIG_LANCZOS_ARPACK_USE_IFs
