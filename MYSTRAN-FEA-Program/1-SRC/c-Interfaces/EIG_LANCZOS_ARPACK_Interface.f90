! ##################################################################################################################################

   MODULE EIG_LANCZOS_ARPACK_Interface

   INTERFACE

      SUBROUTINE EIG_LANCZOS_ARPACK

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, KMSM_SDIA, LINKNO, NDOFL, NTERM_KLL, NTERM_KLLD, NTERM_KMSM,     &
                                         NTERM_KMSMn, NTERM_KMSMs, NTERM_MLL, NTERM_ULL, NUM_EIGENS, NUM_KLLD_DIAG_ZEROS,          &
                                         NUM_MLL_DIAG_ZEROS, NVEC, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO, PI
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  ARP_TOL, BAILOUT, DARPACK, EIGESTL, EPSIL, MKLSTATS, MXITERL, SOLLIB, SPARSTOR, SUPINFO,  &
                                         SUPWARN
      USE DOF_TABLES, ONLY            :  TDOFI
      USE SUBR_BEGEND_LEVELS, ONLY    :  EIG_LANCZOS_ARPACK_BEGEND
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VAL, EIGEN_VEC, MODE_NUM
      USE MODEL_STUF, ONLY            :  EIG_FRQ1, EIG_FRQ2, EIG_LANCZOS_NEV_DELT, EIG_LAP_MAT_TYPE, EIG_MODE, EIG_N1, EIG_N2,     &
                                         EIG_NCVFACL, EIG_SIGMA
      USE ARPACK_MATRICES_1, ONLY     :  IWORK, RESID, RFAC, SELECT, VBAS, WORKD, WORKL
      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL, I_KLLD, J_KLLD, KLLD, I_MLL, J_MLL, MLL, SYM_KLL, SYM_KLLD, SYM_MLL,   &
                                         I_KMSM, J_KMSM, KMSM, I_KMSMn, J_KMSMn, KMSMn, I_KMSMs, J_KMSMs, KMSMs
                                         
      USE ARPACK_LANCZOS_EIG
 
      IMPLICIT NONE
  
      INTEGER(LONG)                   :: LWORKL            ! Used to dimension a work array
      INTEGER(LONG)                   :: NUM1              ! Number to use for max no. of eigens to find. Must be NUM1 <= NDOFL
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EIG_LANCZOS_ARPACK_BEGEND

      END SUBROUTINE EIG_LANCZOS_ARPACK

   END INTERFACE

   END MODULE EIG_LANCZOS_ARPACK_Interface

