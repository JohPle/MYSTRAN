! ##################################################################################################################################

   MODULE MGGC_MASS_MATRIX_Interface

   INTERFACE

      SUBROUTINE MGGC_MASS_MATRIX

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  NGRID, NTERM_MGGC, BLNK_SUB_NAM
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL, SPARSTOR, WTMASS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  MGGC_MASS_MATRIX_BEGEND
      USE MODEL_STUF, ONLY            :  AGRID, GRID_ID, INV_GRID_SEQ
      USE SPARSE_MATRICES, ONLY       :  I_MGGC, J_MGGC, MGGC
 
      IMPLICIT NONE
  
      INTEGER(LONG)                   :: KSTART            ! Used in deciding whether to process all elem mass terms or only
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MGGC_MASS_MATRIX_BEGEND

      END SUBROUTINE MGGC_MASS_MATRIX

   END INTERFACE

   END MODULE MGGC_MASS_MATRIX_Interface

