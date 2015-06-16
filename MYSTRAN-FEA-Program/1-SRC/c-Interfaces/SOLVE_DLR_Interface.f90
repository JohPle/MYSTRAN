! ##################################################################################################################################

   MODULE SOLVE_DLR_Interface

   INTERFACE

      SUBROUTINE SOLVE_DLR


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, SCR
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KLL_SDIA, NDOFR, NDOFL, NTERM_DLR, NTERM_KLL,   &
                                         NTERM_KLLs, NTERM_KRL
      USE PARAMS, ONLY                :  EPSIL, MKLFAC62, MKLSTATS, PRTDLR, SOLLIB, SPARSTOR
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE_DLR_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE SPARSE_MATRICES, ONLY       :  I2_DLR, I_DLR, J_DLR, DLR, I_DLRt, I2_DLRt, J_DLRt, DLRt, I_KRL, J_KRL, KRL,              &
                                         I_KLL, I2_KLL, J_KLL, KLL, I_KLLs, I2_KLLs, J_KLLs, KLLs 
                                         
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE_DLR_BEGEND

      END SUBROUTINE SOLVE_DLR

   END INTERFACE

   END MODULE SOLVE_DLR_Interface

