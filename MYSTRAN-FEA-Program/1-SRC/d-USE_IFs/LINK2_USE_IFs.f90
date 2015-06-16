      MODULE LINK2_USE_IFs

! USE Interface statements for all subroutines called by SUBROUTINE LINK2

      USE TIME_INIT_Interface
      USE OURDAT_Interface
      USE OURTIM_Interface
      USE READ_L1A_Interface
      USE OUTA_HERE_Interface
      USE GET_MATRIX_DIAG_STATS_Interface
      USE STIFF_MAT_EQUIL_CHK_Interface
      USE REDUCE_G_NM_Interface
      USE REDUCE_N_FS_Interface
      USE REDUCE_F_AO_Interface
      USE WRITE_MATRIX_1_Interface
      USE REDUCE_A_LR_Interface
      USE DEALLOCATE_RBGLOBAL_Interface
      USE OUTPUT4_PROC_Interface
      USE WRITE_USERIN_BD_CARDS_Interface
      USE WRITE_L1A_Interface
      USE CHK_ARRAY_ALLOC_STAT_Interface
      USE WRITE_ALLOC_MEM_TABLE_Interface
      USE FILE_INQUIRE_Interface
      USE DEALLOCATE_SPARSE_MAT_Interface

      END MODULE LINK2_USE_IFs
