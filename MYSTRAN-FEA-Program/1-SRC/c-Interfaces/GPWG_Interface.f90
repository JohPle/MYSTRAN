! ##################################################################################################################################

   MODULE GPWG_Interface

   INTERFACE

      SUBROUTINE GPWG ( WHICH )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_BUG, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_MASS_BIT, IBIT, MBUG, NCONM2, NCORD, NELE, NGRID, SOL_NAME, WARN_ERR
      USE PARAMS, ONLY                :  EPSIL, GRDPNT, MEFMGRID, MEFMLOC, SUPWARN, WTMASS
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GPWG_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  AGRID, BGRID, CONM2, CORD, CAN_ELEM_TYPE_OFFSET, ELDT, ELGP, NUM_EMG_FATAL_ERRS,          &
                                         GRID, GRID_ID, MCG, ME, MEFFMASS_CALC, MEFM_RB_MASS,                                      &
                                         MODEL_MASS, MODEL_IXX, MODEL_IYY, MODEL_IZZ, MODEL_XCG, MODEL_YCG, MODEL_ZCG,             &
                                         OFFDIS, OFFSET, PLY_NUM, RCONM2, RGRID, TYPE, USERIN_RBM0
 
      IMPLICIT NONE
 
      CHARACTER(12*BYTE), INTENT(IN)  :: WHICH             ! Whether to get mass props for
      INTEGER(LONG)                   :: JDOF              ! Array index used in getting mass terms from the elem mass matrix, ME
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GPWG_BEGEND

      REAL(DOUBLE)                    :: M0                ! An intermediate variable used in calc model mass props
 
      END SUBROUTINE GPWG

   END INTERFACE

   END MODULE GPWG_Interface

