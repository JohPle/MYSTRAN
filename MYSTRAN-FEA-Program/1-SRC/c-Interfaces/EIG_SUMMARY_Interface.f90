! ##################################################################################################################################

   MODULE EIG_SUMMARY_Interface

   INTERFACE

      SUBROUTINE EIG_SUMMARY

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ANS, ANSFIL, ANS_MSG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFL, NUM_EIGENS, NVEC, NUM_KLLD_DIAG_ZEROS, NUM_MLL_DIAG_ZEROS, SOL_NAME, &
                                         WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  ART_MASS, ART_ROT_MASS, ART_TRAN_MASS, DARPACK, SOLLIB, SUPINFO, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  EIG_SUMMARY_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO, PI
      USE EIGEN_MATRICES_1, ONLY      :  GEN_MASS, MODE_NUM, EIGEN_VAL
      USE MODEL_STUF, ONLY            :  EIG_COMP, EIG_CRIT, EIG_GRID, EIG_LAP_MAT_TYPE, EIG_METH, EIG_MODE, EIG_N2, EIG_NORM,     &
                                         EIG_SIGMA, MAXMIJ, MIJ_COL, MIJ_ROW, NUM_FAIL_CRIT
 
      IMPLICIT NONE
  
      CHARACTER( 1*BYTE)              :: ASTERISK = '*'    ! Used for denoting negative eigenvalues
  
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EIG_SUMMARY_BEGEND
  
      END SUBROUTINE EIG_SUMMARY

   END INTERFACE

   END MODULE EIG_SUMMARY_Interface

