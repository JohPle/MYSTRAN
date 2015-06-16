! ##################################################################################################################################

   MODULE LINK4_Interface

   INTERFACE

      SUBROUTINE LINK4


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, ERRSTAT, F04, F06, L1M, L3A, SC1
      USE IOUNT1, ONLY                :  LINK1M,  LINK2I,  LINK3A, L1M_MSG, L3A_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, FATAL_ERR, LINKNO, NDOFL,                                             &
                                         NTERM_KLL, NTERM_KLLD, NTERM_KLLDn,                                                       &
                                         NTERM_MLL, NTERM_MLLn,                                                                    &
                                         NVEC, NUM_EIGENS, NUM_KLLD_DIAG_ZEROS, NUM_MLL_DIAG_ZEROS, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  EPSIL, LANCMETH, SOLLIB, SPARSTOR, SUPINFO
      USE MODEL_STUF, ONLY            :  EIG_COMP, EIG_CRIT, EIG_FRQ1, EIG_FRQ2, EIG_GRID, EIG_METH, EIG_MSGLVL, EIG_LAP_MAT_TYPE, &
                                         EIG_MODE, EIG_N1, EIG_N2, EIG_NCVFACL, EIG_NORM, EIG_SID, EIG_SIGMA, EIG_VECS, MAXMIJ,    &
                                         MIJ_COL, MIJ_ROW, NUM_FAIL_CRIT

      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL, I_KLLD, J_KLLD, KLLD, I_KLLDn, J_KLLDn, KLLDn,                         &
                                         I_MLL, J_MLL, MLL, I_MLLn, J_MLLn, MLLn
      USE OUTPUT4_MATRICES, ONLY      :  NUM_OU4_REQUESTS
      USE EIGEN_MATRICES_1, ONLY      :  GEN_MASS, MODE_NUM, EIGEN_VAL, EIGEN_VEC
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND, BBAND
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG

      IMPLICIT NONE 

      INTEGER(LONG), PARAMETER        :: P_LINKNO = 2        ! Prior LINK no's that should have run before this LINK can execute.

      END SUBROUTINE LINK4

   END INTERFACE

   END MODULE LINK4_Interface

