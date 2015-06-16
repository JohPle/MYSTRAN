      MODULE LINK6_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE LINK6

      USE TIME_INIT_Interface
      USE OURDAT_Interface
      USE OURTIM_Interface
      USE READ_L1A_Interface
      USE OUTA_HERE_Interface
      USE ALLOCATE_EIGEN1_MAT_Interface
      USE READ_L1M_Interface
      USE ALLOCATE_SPARSE_MAT_Interface
      USE READ_MATRIX_1_Interface
      USE FILE_OPEN_Interface
      USE READERR_Interface
      USE FILE_CLOSE_Interface
      USE SOLVE_DLR_Interface
      USE PARTITION_VEC_Interface
      USE MERGE_PHIXA_Interface
      USE WRITE_SPARSE_CRS_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface
      USE CALC_PHIZL_Interface
      USE CALC_KRRcb_Interface
      USE MERGE_KXX_Interface
      USE CALC_MRRcb_Interface
      USE CALC_MRN_Interface
      USE MERGE_MXX_Interface
      USE INTERFACE_FORCE_LTM_Interface
      USE NET_CG_LOADS_LTM_Interface
      USE MERGE_LTM_Interface
      USE GET_SPARSE_CRS_COL_Interface
      USE CALC_CB_MEFM_MPF_Interface
      USE OUTPUT4_PROC_Interface
      USE WRITE_USERIN_BD_CARDS_Interface
      USE DEALLOCATE_EIGEN1_MAT_Interface
      USE DEALLOCATE_LAPACK_MAT_Interface
      USE WRITE_L1A_Interface
      USE CHK_ARRAY_ALLOC_STAT_Interface
      USE WRITE_ALLOC_MEM_TABLE_Interface
      USE FILE_INQUIRE_Interface

      END MODULE LINK6_USE_IFs
