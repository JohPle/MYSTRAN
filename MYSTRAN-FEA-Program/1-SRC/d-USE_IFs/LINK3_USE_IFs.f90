      MODULE LINK3_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE LINK3

      USE TIME_INIT_Interface
      USE OURDAT_Interface
      USE OURTIM_Interface
      USE READ_L1A_Interface
      USE OUTA_HERE_Interface
      USE SYM_MAT_DECOMP_LAPACK_Interface
      USE SPARSE_MAT_DIAG_ZEROS_Interface
      USE SYM_MAT_DECOMP_IntMKL_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE CRS_NONSYM_TO_CRS_SYM_Interface
      USE WRITE_MATRIX_1_Interface
      USE ALLOCATE_COL_VEC_Interface
      USE ALLOCATE_LAPACK_MAT_Interface
      USE FILE_OPEN_Interface
      USE GET_SPARSE_CRS_COL_Interface
      USE WRITE_VECTOR_Interface
      USE FBS_LAPACK_Interface
      USE FBS_IntMKL_Interface
      USE EPSCALC_Interface
      USE VECINORM_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE DEALLOCATE_LAPACK_MAT_Interface
      USE DEALLOCATE_COL_VEC_Interface
      USE FILE_CLOSE_Interface
      USE WRITE_L1A_Interface
      USE CHK_ARRAY_ALLOC_STAT_Interface
      USE WRITE_ALLOC_MEM_TABLE_Interface
      USE FILE_INQUIRE_Interface
      USE GET_FORMATTED_INTEGER_Interface

      END MODULE LINK3_USE_IFs
