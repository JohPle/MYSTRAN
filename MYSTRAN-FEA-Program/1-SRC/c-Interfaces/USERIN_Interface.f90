! ##################################################################################################################################

   MODULE USERIN_Interface

   INTERFACE

      SUBROUTINE USERIN ( INT_ELEM_ID, OPT, EMG_CALLING_SUBR, WRITE_WARN )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, IN4, IN4_MSG, IN4FIL, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEDAT0_CUSERIN, MELDOF, NDOFG, NGRID, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE DOF_TABLES, ONLY            :  TDOF, TDOFI, TDOF_ROW_START
      USE PARAMS, ONLY                :  grdpnt, WTMASS
      USE INPUTT4_MATRICES, ONLY      :  IN4_COL_MAP, IN4_MAT
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET, TR6_0            
      USE MODEL_STUF, ONLY            :  AGRID, EDAT, EID, ELDOF, ELGP, EPNT, GRID_ID, INTL_PID, KE, ME, PPE, PUSERIN, TYPE,       &
                                         NUM_EMG_FATAL_ERRS
      USE MODEL_STUF, ONLY            :  USERIN_ACT_GRIDS, USERIN_ACT_COMPS, USERIN_CID0, USERIN_IN4_INDEX, USERIN_RBM0,           &
                                         USERIN_NUM_BDY_DOF, USERIN_NUM_ACT_GRDS, USERIN_NUM_SPOINTS,                              &
                                         USERIN_MASS_MAT_NAME, USERIN_LOAD_MAT_NAME, USERIN_RBM0_MAT_NAME, USERIN_STIF_MAT_NAME

      USE SUBR_BEGEND_LEVELS, ONLY    :  USERIN_BEGEND
 
      IMPLICIT NONE 
  
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'USERIN'
      CHARACTER(LEN=*) , INTENT(IN)   :: EMG_CALLING_SUBR  ! Subr that called EMG which, in turn, called this subr
      CHARACTER( 1*BYTE), INTENT(IN)  :: OPT(6)            ! 'Y'/'N' flags for whether to calc certain elem matrices
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_WARN        ! If 'Y" write warning messages, otherwise do not

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID       ! Internal element ID for which
                                                           ! Array that has USERIN grid num in col 1 and comp number in remaining 7
                                                           ! cols (1 col has all comps, others each indiv comp) for USERIN bdy DOF's
      INTEGER(LONG)                   :: USERIN_CID0_ICID  ! Internal coordinate system ID for USERIN_CID0
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = USERIN_BEGEND
  
      REAL(DOUBLE)                    :: DX                ! X offset of USERIN elem CG from overall model basic sys origin
      REAL(DOUBLE)                    :: DY                ! Y offset of USERIN elem CG from overall model basic sys origin
      REAL(DOUBLE)                    :: DZ                ! Z offset of USERIN elem CG from overall model basic sys origin

      REAL(DOUBLE)                    :: DUM(USERIN_NUM_BDY_DOF,6)

      REAL(DOUBLE)                    :: RBM66(6,6)        ! 6x6 RB mass matrix read from IN4 file (if USERIN_RBM0_MAT_NAME exists)

      REAL(DOUBLE)                    :: MRRcb_FULL(USERIN_NUM_BDY_DOF,USERIN_NUM_BDY_DOF)

      REAL(DOUBLE)                    :: R66(6,6)          ! Rotates    basic coord sys of USERIN elem to basic sys of overall model
      REAL(DOUBLE)                    :: T66(6,6)          ! Translates basic coord sys of USERIN elem to basic sys of overall model

      REAL(DOUBLE)                    :: TB6(USERIN_NUM_BDY_DOF,6)

      END SUBROUTINE USERIN

   END INTERFACE

   END MODULE USERIN_Interface

