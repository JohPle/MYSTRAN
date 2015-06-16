! ##################################################################################################################################

   MODULE GPWG_USERIN_Interface

   INTERFACE

      SUBROUTINE GPWG_USERIN ( IEID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NGRID, SOL_NAME, WARN_ERR
      USE PARAMS, ONLY                :  EPSIL, GRDPNT, MEFMGRID, SUPWARN, WTMASS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GPWG_USERIN_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  NUM_EMG_FATAL_ERRS, EID, GRID_ID, ME, PLY_NUM, RGRID, USERIN_RBM0
 
      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'GPWG_USERIN'

      INTEGER(LONG), INTENT(IN)       :: IEID              ! Internal element ID for the USERIN element to process
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GPWG_USERIN_BEGEND

      REAL(DOUBLE)                    :: M0                ! An intermediate variable used in calc model mass props
 
      END SUBROUTINE GPWG_USERIN

   END INTERFACE

   END MODULE GPWG_USERIN_Interface

