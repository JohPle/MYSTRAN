      MODULE NET_CG_LOADS_LTM_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE NET_CG_LOADS_LTM

      USE OURTIM_Interface
      USE MATMULT_SFF_Interface
      USE MATMULT_FFF_T_Interface
      USE INVERT_FF_MAT_Interface
      USE MATMULT_FFF_Interface
      USE CNT_NONZ_IN_FULL_MAT_Interface
      USE ALLOCATE_SCR_CRS_MAT_Interface
      USE FULL_TO_SPARSE_CRS_Interface
      USE MERGE_MAT_COLS_SSS_Interface
      USE ALLOCATE_SCR_CCS_MAT_Interface
      USE SPARSE_CRS_SPARSE_CCS_Interface
      USE DEALLOCATE_SCR_MAT_Interface
      USE MATMULT_SSS_NTERM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE MATMULT_SSS_Interface
      USE WRITE_SPARSE_CRS_Interface

      END MODULE NET_CG_LOADS_LTM_USE_IFs
