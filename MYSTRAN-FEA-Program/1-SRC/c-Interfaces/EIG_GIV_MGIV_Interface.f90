! ##################################################################################################################################

   MODULE EIG_GIV_MGIV_Interface

   INTERFACE

       SUBROUTINE EIG_GIV_MGIV

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, KLL_SDIA, KLLD_SDIA, MLL_SDIA, NDOFL, NTERM_KLL, NTERM_KLLD,     &
                                         NTERM_MLL, NUM_EIGENS, NUM_KLLD_DIAG_ZEROS, NUM_MLL_DIAG_ZEROS, NVEC, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  BAILOUT, EPSIL, SUPINFO, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  EIG_GIV_MGIV_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO, PI
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VAL, EIGEN_VEC, MODE_NUM
      USE MODEL_STUF, ONLY            :  EIG_FRQ1, EIG_FRQ2, EIG_METH, EIG_N1, EIG_N2, EIG_VECS
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND, BBAND
      USE SPARSE_MATRICES, ONLY       :  I_KLL, J_KLL, KLL, I_KLLD, J_KLLD, KLLD, I_MLL, J_MLL, MLL
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE LAPACK_GIV_MGIV_EIG
 
      IMPLICIT NONE
  
      INTEGER(LONG)                   :: IWORK(8*NDOFL)      ! Integer workspace used by LAPACK.
      INTEGER(LONG)                   :: NUM1                ! Number to use for max no. of eigens to find. Must be NUM1 <= NDOFL
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EIG_GIV_MGIV_BEGEND

      REAL(DOUBLE)                    :: Q(NDOFL,NDOFL)      ! Matrix used in LAPACK reduction of eigen problem to standard form.

      END SUBROUTINE EIG_GIV_MGIV

   END INTERFACE

   END MODULE EIG_GIV_MGIV_Interface

