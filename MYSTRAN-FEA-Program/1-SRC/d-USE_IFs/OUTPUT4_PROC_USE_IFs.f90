      MODULE OUTPUT4_PROC_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE OUTPUT4_PROC

      USE OURTIM_Interface
      USE GET_OU4_MAT_STATS_Interface
      USE OU4_PARTVEC_PROC_Interface
      USE WRITE_PARTNd_MAT_HDRS_Interface
      USE PARTITION_SS_NTERM_Interface
      USE ALLOCATE_SCR_CRS_MAT_Interface
      USE PARTITION_SS_Interface
      USE WRITE_OU4_SPARSE_MAT_Interface
      USE ALLOCATE_FULL_MAT_Interface
      USE PARTITION_FF_Interface
      USE WRITE_OU4_FULL_MAT_Interface
      USE OUTA_HERE_Interface
      USE DEALLOCATE_SCR_MAT_Interface
      USE DEALLOCATE_FULL_MAT_Interface

      END MODULE OUTPUT4_PROC_USE_IFs
