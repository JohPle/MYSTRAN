      MODULE EIG_INV_PWR_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE EIG_INV_PWR

      USE OURTIM_Interface
      USE MATADD_SSS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE MATADD_SSS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE ALLOCATE_EIGEN1_MAT_Interface
      USE SYM_MAT_DECOMP_LAPACK_Interface
      USE SYM_MAT_DECOMP_IntMKL_Interface
      USE SPARSE_MAT_DIAG_ZEROS_Interface
      USE CRS_NONSYM_TO_CRS_SYM_Interface
      USE OUTA_HERE_Interface
      USE MATMULT_SFF_Interface
      USE FBS_LAPACK_Interface
      USE FBS_IntMKL_Interface

      END MODULE EIG_INV_PWR_USE_IFs
