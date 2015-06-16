      MODULE SOLVE_UO0_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE SOLVE_UO0

      USE OURTIM_Interface
      USE OUTA_HERE_Interface
      USE FILE_OPEN_Interface
      USE ALLOCATE_COL_VEC_Interface
      USE GET_SPARSE_CRS_COL_Interface
      USE FBS_LAPACK_Interface
      USE FBS_IntMKL_Interface
      USE WRITE_VECTOR_Interface
      USE DEALLOCATE_COL_VEC_Interface
      USE FILE_CLOSE_Interface

      END MODULE SOLVE_UO0_USE_IFs
