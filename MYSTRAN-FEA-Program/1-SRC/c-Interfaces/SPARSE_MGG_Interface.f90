! ##################################################################################################################################

   MODULE SPARSE_MGG_Interface

   INTERFACE

      SUBROUTINE SPARSE_MGG

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L1R, L1R_MSG, LINK1R, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NCMASS, NDOFG, NGRID, NTERM_MGG, NTERM_MGGC, NTERM_MGGE,         &
                                         NTERM_MGGS, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_MGG_BEGEND
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE DOF_TABLES,ONLY             :  TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  GRID_ID
      USE PARAMS, ONLY                :  EPSIL, PRTMASS, SUPINFO, WTMASS
      USE EMS_ARRAYS, ONLY            :  EMS, EMSCOL, EMSKEY, EMSPNT
      USE SPARSE_MATRICES, ONLY       :  I2_MGG, I_MGG, J_MGG, MGG, I_MGGC, J_MGGC, MGGC, I_MGGE, J_MGGE, MGGE,                    &
                                         I_MGGS, J_MGGS, MGGS,  SYM_MGGC, SYM_MGGE, SYM_MGGS
      USE SCRATCH_MATRICES, ONLY      :  I_CRS1, J_CRS1, CRS1 
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_MGG_BEGEND
 
      END SUBROUTINE SPARSE_MGG

   END INTERFACE

   END MODULE SPARSE_MGG_Interface

