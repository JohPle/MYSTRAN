      MODULE REDUCE_PN_TO_PF_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE REDUCE_PN_TO_PF

      USE OURTIM_Interface
      USE PARTITION_SS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE PARTITION_SS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE MATMULT_SFS_NTERM_Interface
      USE MATMULT_SFS_Interface
      USE MATADD_SSS_NTERM_Interface
      USE MATADD_SSS_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE ALLOCATE_FULL_MAT_Interface
      USE SPARSE_CRS_TO_FULL_Interface
      USE MATMULT_FFF_Interface
      USE DEALLOCATE_FULL_MAT_Interface
      USE MATADD_FFF_Interface
      USE OUTA_HERE_Interface
      USE WRITE_MATRIX_1_Interface

      END MODULE REDUCE_PN_TO_PF_USE_IFs
