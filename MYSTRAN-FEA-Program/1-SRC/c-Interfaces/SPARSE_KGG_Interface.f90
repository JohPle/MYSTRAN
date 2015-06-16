! ##################################################################################################################################

   MODULE SPARSE_KGG_Interface

   INTERFACE

      SUBROUTINE SPARSE_KGG

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L1L, L1L_MSG, LINK1L, SC1, SPCFIL, SPC, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG, NGRID, NIND_GRDS_MPCS,                                    &
                                         NTERM_KGG, NUM_PCHD_SPC1, SOL_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_KGG_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  AUTOSPC, AUTOSPC_RAT, EPSIL, PRTTSET, PRTSTIFF, SPC1QUIT, SUPINFO, SUPWARN
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE MODEL_STUF, ONLY            :  GRID, GRID_ID, GRID_SEQ, MPC_IND_GRIDS, INV_GRID_SEQ
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START, TDOFI, TSET
      USE STF_ARRAYS, ONLY            :  STFKEY, STF3
      USE SPARSE_MATRICES, ONLY       :  I_KGG, J_KGG, KGG
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_KGG_BEGEND
 
      END SUBROUTINE SPARSE_KGG

   END INTERFACE

   END MODULE SPARSE_KGG_Interface

