! ##################################################################################################################################

   MODULE MGGS_MASS_MATRIX_Interface

   INTERFACE

      SUBROUTINE MGGS_MASS_MATRIX

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, NCMASS, NDOFG, NGRID, NPMASS, NTERM_MGGS, BLNK_SUB_NAM
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  SPARSTOR, WTMASS
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF
      USE MODEL_STUF, ONLY            :  CMASS, GRID_ID, PMASS, RPMASS
      USE SPARSE_MATRICES, ONLY       :  I_MGGS, J_MGGS, MGGS
      USE SUBR_BEGEND_LEVELS, ONLY    :  MGGS_MASS_MATRIX_BEGEND
 
      IMPLICIT NONE
  
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MGGS_MASS_MATRIX_BEGEND

      END SUBROUTINE MGGS_MASS_MATRIX

   END INTERFACE

   END MODULE MGGS_MASS_MATRIX_Interface

