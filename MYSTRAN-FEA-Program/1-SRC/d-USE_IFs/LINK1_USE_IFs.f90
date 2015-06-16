      MODULE LINK1_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE LINK1

      USE TIME_INIT_Interface
      USE OURDAT_Interface
      USE OURTIM_Interface
      USE OUTA_HERE_Interface
      USE ALLOCATE_MODEL_STUF_Interface
      USE FILE_OPEN_Interface
      USE MPC_PROC_Interface
      USE FILE_CLOSE_Interface
      USE RIGID_ELEM_PROC_Interface
      USE SPARSE_RMG_Interface
      USE FORCE_MOM_PROC_Interface
      USE EPTL_Interface
      USE EMP0_Interface
      USE ALLOCATE_EMS_ARRAYS_Interface
      USE EMP_Interface
      USE MGGC_MASS_MATRIX_Interface
      USE ALLOCATE_L1_MGG_Interface
      USE SPARSE_MGG_Interface
      USE DEALLOCATE_EMS_ARRAYS_Interface
      USE DEALLOCATE_L1_MGG_Interface
      USE DEALLOCATE_MODEL_STUF_Interface
      USE GRAV_PROC_Interface
      USE RFORCE_PROC_Interface
      USE SLOAD_PROC_Interface
      USE SPARSE_PG_Interface
      USE ESP0_Interface
      USE ALLOCATE_STF_ARRAYS_Interface
      USE ESP_Interface
      USE DEALLOCATE_IN4_FILES_Interface
      USE SPARSE_KGGD_Interface
      USE DEALLOCATE_STF_ARRAYS_Interface
      USE SPARSE_KGG_Interface
      USE WRITE_DOF_TABLES_Interface
      USE ELSAVE_Interface
      USE CHK_ARRAY_ALLOC_STAT_Interface
      USE WRITE_ALLOC_MEM_TABLE_Interface
      USE WRITE_L1A_Interface
      USE FILE_INQUIRE_Interface

      END MODULE LINK1_USE_IFs
