      MODULE REDUCE_F_AO_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE REDUCE_F_AO

      USE OURTIM_Interface
      USE PARTITION_VEC_Interface
      USE REDUCE_KFF_TO_KAA_Interface
      USE REDUCE_MFF_TO_MAA_Interface
      USE REDUCE_PF_TO_PA_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_LAPACK_MAT_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE GET_MATRIX_DIAG_STATS_Interface
      USE ALLOCATE_RBGLOBAL_Interface
      USE TDOF_COL_NUM_Interface
      USE STIFF_MAT_EQUIL_CHK_Interface
      USE DEALLOCATE_RBGLOBAL_Interface
      USE REDUCE_KFFD_TO_KAAD_Interface

      END MODULE REDUCE_F_AO_USE_IFs
