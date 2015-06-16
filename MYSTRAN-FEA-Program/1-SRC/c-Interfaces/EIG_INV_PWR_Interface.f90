! ##################################################################################################################################

   MODULE EIG_INV_PWR_Interface

   INTERFACE

       SUBROUTINE EIG_INV_PWR

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, KMSM_SDIA, LINKNO, NDOFL, NTERM_KLL, NTERM_KLLD, NTERM_KMSM,     &
                                         NTERM_KMSMs, NTERM_MLL, NUM_EIGENS, NVEC, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  BAILOUT, EPSIL, KLLRAT, MKLFAC41, MKLSTATS, MXITERI, SOLLIB, SPARSTOR, SUPINFO, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  EIG_INV_PWR_BEGEND
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VAL, EIGEN_VEC, MODE_NUM
      USE MODEL_STUF, ONLY            :  EIG_N2, EIG_SIGMA
      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL, I_KLLD, J_KLLD, KLLD, I_MLL, J_MLL, MLL,                               &
                                         I_KMSM, I2_KMSM, J_KMSM, KMSM, I_KMSMs, I2_KMSMs, J_KMSMs, KMSMs 
      USE SPARSE_MATRICES, ONLY       :  SYM_KLL, SYM_KLLD, SYM_MLL
      USE LAPACK_LIN_EQN_DPB
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MKL_DSS
 
      IMPLICIT NONE
  
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EIG_INV_PWR_BEGEND

      END SUBROUTINE EIG_INV_PWR

   END INTERFACE

   END MODULE EIG_INV_PWR_Interface

