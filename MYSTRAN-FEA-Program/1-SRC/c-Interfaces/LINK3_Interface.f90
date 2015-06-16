! ##################################################################################################################################

   MODULE LINK3_Interface

   INTERFACE

      SUBROUTINE LINK3

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L2T, L3A, SC1, LINK2T, LINK3A, L2T_MSG, L3A_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, COMM, FATAL_ERR, KLL_SDIA, LINKNO, NDOFL, NSUB,                             &
                                         NTERM_KLL, NTERM_KLLs, NTERM_PL, RESTART, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  YEAR, MONTH, DAY, HOUR, MINUTE, SEC, SFRAC, STIME, TSEC       
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO, TEN
      USE PARAMS, ONLY                :  EPSERR, EPSIL, KLLRAT, MKLFAC31, MKLSTATS, RELINK3, RCONDK, SOLLIB, SPARSTOR, SUPINFO,    &
                                         SUPWARN
      USE SPARSE_MATRICES, ONLY       :  I_KLL, I2_KLL, J_KLL, KLL, I_KLLs, I2_KLLs, J_KLLs, KLLs, I_PL, J_PL, PL
      USE LAPACK_DPB_MATRICES, ONLY   :  RES
      USE COL_VECS, ONLY              :  UL_COL, PL_COL
      USE MACHINE_PARAMS, ONLY        :  MACH_EPS, MACH_SFMIN
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE LAPACK_BLAS_AUX
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: P_LINKNO = 2      ! Prior LINK no's that should have run before this LINK can execute

      REAL(DOUBLE)                    :: BETA              ! Multiple for rhs for use in subr FBS

      END SUBROUTINE LINK3

   END INTERFACE

   END MODULE LINK3_Interface

