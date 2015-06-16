      MODULE LINK4_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE LINK4

      USE TIME_INIT_Interface
      USE OURDAT_Interface
      USE OURTIM_Interface
      USE READ_L1A_Interface
      USE OUTA_HERE_Interface
      USE READ_L1M_Interface
      USE SPARSE_MAT_DIAG_ZEROS_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE CRS_SYM_TO_CRS_NONSYM_Interface
      USE EIG_GIV_MGIV_Interface
      USE EIG_INV_PWR_Interface
      USE EIG_LANCZOS_ARPACK_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE ALLOCATE_EIGEN1_MAT_Interface
      USE CALC_GEN_MASS_Interface
      USE RENORM_ON_MASS_Interface
      USE WRITE_L1M_Interface
      USE EIG_SUMMARY_Interface
      USE FILE_OPEN_Interface
      USE FILE_CLOSE_Interface
      USE WRITE_VECTOR_Interface
      USE OUTPUT4_PROC_Interface
      USE DEALLOCATE_LAPACK_MAT_Interface
      USE DEALLOCATE_EIGEN1_MAT_Interface
      USE WRITE_L1A_Interface
      USE CHK_ARRAY_ALLOC_STAT_Interface
      USE WRITE_ALLOC_MEM_TABLE_Interface
      USE FILE_INQUIRE_Interface

      END MODULE LINK4_USE_IFs
