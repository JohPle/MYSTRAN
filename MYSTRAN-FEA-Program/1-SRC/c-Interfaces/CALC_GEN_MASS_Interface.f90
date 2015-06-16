! ##################################################################################################################################

   MODULE CALC_GEN_MASS_Interface

   INTERFACE

      SUBROUTINE CALC_GEN_MASS


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFL, NTERM_KLLDn, NTERM_MLLn, NVEC, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  EPSIL
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_GEN_MASS_BEGEND
      USE EIGEN_MATRICES_1, ONLY      :  GEN_MASS, EIGEN_VEC
      USE MODEL_STUF, ONLY            :  EIG_CRIT, MAXMIJ, MIJ_COL, MIJ_ROW, NUM_FAIL_CRIT
      USE SPARSE_MATRICES, ONLY       :  I_KLLDn, J_KLLDn, KLLDn, I_MLLn, J_MLLn, MLLn
      USE SPARSE_MATRICES, ONLY       :  SYM_MLLn
      USE LAPACK_BLAS_AUX

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_GEN_MASS_BEGEND

      REAL(DOUBLE)                    :: MAX               ! Temporary variable used in finding MAXMIJ
      REAL(DOUBLE)                    :: MIJ               ! The i,j-th value from gen. mass matrix. Used to find MAXMIJ

      END SUBROUTINE CALC_GEN_MASS

   END INTERFACE

   END MODULE CALC_GEN_MASS_Interface

