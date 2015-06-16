      MODULE REDUCE_N_FS_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE REDUCE_N_FS

      USE OURTIM_Interface
      USE PARTITION_VEC_Interface
      USE ALLOCATE_COL_VEC_Interface
      USE FILE_OPEN_Interface
      USE READERR_Interface
      USE OUTA_HERE_Interface
      USE FILE_CLOSE_Interface
      USE WRITE_VECTOR_Interface
      USE REDUCE_KNN_TO_KFF_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE REDUCE_MNN_TO_MFF_Interface
      USE REDUCE_PN_TO_PF_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE MATMULT_SFS_NTERM_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE MATMULT_SFS_Interface
      USE WRITE_MATRIX_1_Interface
      USE DEALLOCATE_COL_VEC_Interface
      USE GET_MATRIX_DIAG_STATS_Interface
      USE ALLOCATE_RBGLOBAL_Interface
      USE TDOF_COL_NUM_Interface
      USE STIFF_MAT_EQUIL_CHK_Interface
      USE DEALLOCATE_RBGLOBAL_Interface
      USE REDUCE_KNND_TO_KFFD_Interface

      END MODULE REDUCE_N_FS_USE_IFs
