! ##################################################################################################################################

   MODULE EMP_Interface

   INTERFACE

      SUBROUTINE EMP

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_BUG, WRT_ERR, WRT_FIJ, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_F21_MASS_BIT, FATAL_ERR, IBIT, LTERM_MGGE, MBUG, MELDOF, NDOFG, NELE,  &
                                         NGRID, NTERM_MGGE, NSUB
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL, SPARSTOR
      USE SUBR_BEGEND_LEVELS, ONLY    :  EMP_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  AGRID, ELDT, ELDOF, ELGP, GRID_ID, NUM_EMG_FATAL_ERRS, ME, PLY_NUM, TYPE
      USE EMS_ARRAYS, ONLY            :  EMS, EMSCOL, EMSKEY, EMSPNT
 
      IMPLICIT NONE
 
      INTEGER(LONG)                   :: IDUM              ! Dummy variable used when flipping DOF's
      INTEGER(LONG)                   :: KSTART            ! Used in deciding whether to process all elem mass terms or only
      INTEGER(LONG)                   :: MAX_NUM           ! MAX of NTERM_MGGE/NDOFG (used for DEBUG printout)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EMP_BEGEND
 
      END SUBROUTINE EMP

   END INTERFACE

   END MODULE EMP_Interface

