! ##################################################################################################################################

   MODULE LINK5_Interface

   INTERFACE

      SUBROUTINE LINK5

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1H, L2A, L2E, L2F, L3A, L5A, L5B, SC1
      USE IOUNT1, ONLY                :  LINK1H, LINK2A, LINK2E, LINK2F, LINK3A, LINK5A, LINK5B
      USE IOUNT1, ONLY                :  L1H_MSG, L2A_MSG, L2E_MSG, L2F_MSG, L3A_MSG, L5A_MSG, L5B_MSG
      USE IOUNT1, ONLY                :  ERRSTAT, L1HSTAT, L2ESTAT, L2FSTAT, L3ASTAT
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, FATAL_ERR, LINKNO, NDOFA, NDOFF, NDOFG, NDOFL, NDOFM,                 &
                                         NDOFN, NDOFO, NDOFR, NDOFS, NDOFSE, NGRID, NSUB, NTERM_GMN, NTERM_GOA, NTERM_PO,          &
                                         NUM_CB_DOFS, NUM_EIGENS, NVEC, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  EIGNORM2, SUPINFO, SUPWARN
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE EIGEN_MATRICES_1 , ONLY     :  EIGEN_VAL, EIGEN_VEC, GEN_MASS, MODE_NUM
      USE FULL_MATRICES, ONLY         :  PHIZG_FULL
      USE SPARSE_MATRICES, ONLY       :  I_GMN, J_GMN, GMN, I_GOA, J_GOA, GOA
      USE OUTPUT4_MATRICES, ONLY      :  NUM_OU4_REQUESTS
      USE MISC_MATRICES, ONLY         :  UG_T123_MAT
      USE COL_VECS, ONLY              :  UG_COL, YSe, UO0_COL, UL_COL 
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE DOF_TABLES, ONLY            :  TDOF, TDOFI
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID, INV_GRID_SEQ, EIG_COMP, EIG_GRID, EIG_NORM, MAXMIJ, MIJ_COL, MIJ_ROW

      IMPLICIT NONE
 
      LOGICAL                         :: VEC_SIGN_CHG(NDOFL) ! Indicators of whether user wants to change sign of an eigenvector

      END SUBROUTINE LINK5

   END INTERFACE

   END MODULE LINK5_Interface

