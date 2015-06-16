      MODULE REDUCE_PG_TO_PN_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE REDUCE_PG_TO_PN

      USE OURTIM_Interface
      USE PARTITION_SS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE PARTITION_SS_Interface
      USE MATTRNSP_SS_Interface
      USE ALLOCATE_SCR_CCS_MAT_Interface
      USE SPARSE_CRS_SPARSE_CCS_Interface
      USE MATMULT_SSS_NTERM_Interface
      USE ALLOCATE_SCR_CRS_MAT_Interface
      USE MATMULT_SSS_Interface
      USE DEALLOCATE_SCR_MAT_Interface
      USE MATADD_SSS_NTERM_Interface
      USE MATADD_SSS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE ALLOCATE_FULL_MAT_Interface
      USE SPARSE_CRS_TO_FULL_Interface
      USE MATMULT_FFF_T_Interface
      USE DEALLOCATE_FULL_MAT_Interface
      USE MATADD_FFF_Interface
      USE CNT_NONZ_IN_FULL_MAT_Interface
      USE OUTA_HERE_Interface

      END MODULE REDUCE_PG_TO_PN_USE_IFs
