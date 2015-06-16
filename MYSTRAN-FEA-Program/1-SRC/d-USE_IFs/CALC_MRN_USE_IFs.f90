      MODULE CALC_MRN_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE CALC_MRN

      USE OURTIM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE SPARSE_MAT_DIAG_ZEROS_Interface
      USE CRS_SYM_TO_CRS_NONSYM_Interface
      USE ALLOCATE_SCR_CCS_MAT_Interface
      USE SPARSE_CRS_SPARSE_CCS_Interface
      USE MATMULT_SSS_NTERM_Interface
      USE ALLOCATE_SCR_CRS_MAT_Interface
      USE MATMULT_SSS_Interface
      USE OUTA_HERE_Interface
      USE DEALLOCATE_SCR_MAT_Interface
      USE MATADD_SSS_NTERM_Interface
      USE MATADD_SSS_Interface
      USE MATMULT_SFS_NTERM_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE MATMULT_SFS_Interface

      END MODULE CALC_MRN_USE_IFs
