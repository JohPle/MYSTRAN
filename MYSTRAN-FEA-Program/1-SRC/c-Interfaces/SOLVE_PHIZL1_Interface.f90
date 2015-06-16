! ##################################################################################################################################

   MODULE SOLVE_PHIZL1_Interface

   INTERFACE

      SUBROUTINE SOLVE_PHIZL1 ( NTERM_CRS3 )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_ERR, WRT_LOG, ERR, F04, F06, SCR
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KLL_SDIA, NDOFR, NDOFL, NTERM_DLR,              &
                                         NTERM_PHIZL1, NTERM_KLL, NTERM_KLLs
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE PARAMS, ONLY                :  EPSIL, MKLFAC63, MKLSTATS, SOLLIB, SPARSTOR
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE_PHIZL1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE SCRATCH_MATRICES, ONLY      :  I_CRS3, J_CRS3, CRS3
      USE SPARSE_MATRICES, ONLY       :  I2_PHIZL1, I_PHIZL1, J_PHIZL1, PHIZL1, I2_PHIZL1t, I_PHIZL1t, J_PHIZL1t, PHIZL1t,         &
                                         I_KLL, I2_KLL, J_KLL, KLL, I_KLLs, I2_KLLs, J_KLLs, KLLs
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: NTERM_CRS3        ! Number of terms in matrix CRS3  
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE_PHIZL1_BEGEND

      END SUBROUTINE SOLVE_PHIZL1

   END INTERFACE

   END MODULE SOLVE_PHIZL1_Interface

