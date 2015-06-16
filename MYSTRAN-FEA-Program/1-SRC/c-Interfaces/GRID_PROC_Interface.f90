! ##################################################################################################################################

   MODULE GRID_PROC_Interface

   INTERFACE

      SUBROUTINE GRID_PROC

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  CONV_DEG_RAD
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1B, SC1
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DATA_NAM_LEN, FATAL_ERR, MCORD, MRCORD, MGRID, MRGRID, NCORD, NGRID
      USE PARAMS, ONLY                :  PRTBASIC
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GRID_PROC_BEGEND
      USE MODEL_STUF, ONLY            :  GRID, RGRID, GRID_ID, GRID_SEQ, CORD, RCORD, TN
 
      IMPLICIT NONE
 
      INTEGER(LONG)                   :: JFLD              ! Used in error message to indicate a coord sys ID undefined
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GRID_PROC_BEGEND
 
      END SUBROUTINE GRID_PROC

   END INTERFACE

   END MODULE GRID_PROC_Interface

