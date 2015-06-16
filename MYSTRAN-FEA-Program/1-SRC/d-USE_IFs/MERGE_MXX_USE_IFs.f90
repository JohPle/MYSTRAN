      MODULE MERGE_MXX_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE MERGE_MXX

      USE OURTIM_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE CRS_SYM_TO_CRS_NONSYM_Interface
      USE OUTA_HERE_Interface
      USE MERGE_MAT_COLS_SSS_Interface
      USE MATTRNSP_SS_Interface
      USE MERGE_MAT_ROWS_SSS_Interface
      USE CRS_NONSYM_TO_CRS_SYM_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE WRITE_SPARSE_CRS_Interface

      END MODULE MERGE_MXX_USE_IFs
