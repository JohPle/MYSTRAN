      MODULE EIG_GIV_MGIV_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE EIG_GIV_MGIV

      USE OURTIM_Interface
      USE BANDSIZ_Interface
      USE ALLOCATE_LAPACK_MAT_Interface
      USE BANDGEN_LAPACK_DPB_Interface
      USE WRITE_MATRIX_BY_ROWS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE ALLOCATE_EIGEN1_MAT_Interface
      USE INVERT_EIGENS_Interface
      USE OUTA_HERE_Interface
      USE GET_GRID_AND_COMP_Interface

      END MODULE EIG_GIV_MGIV_USE_IFs
