! ##################################################################################################################################

   MODULE WRITE_MPFACTOR_Interface

   INTERFACE

      SUBROUTINE WRITE_MPFACTOR                ! ( IHDR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ANS, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFG, NDOFR, NVEC, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_MPFACTOR_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO, PI
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE EIGEN_MATRICES_1, ONLY      :  EIGEN_VAL, MPFACTOR_NR, MPFACTOR_N6
      USE MODEL_STUF, ONLY            :  LABEL, STITLE, TITLE
      USE PARAMS, ONLY                :  GRDPNT, MEFMCORD, MEFMGRID, MEFMLOC, MPFOUT
      USE DOF_TABLES, ONLY            :  TDOFI
  
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_MPFACTOR_BEGEND

      END SUBROUTINE WRITE_MPFACTOR

   END INTERFACE

   END MODULE WRITE_MPFACTOR_Interface

