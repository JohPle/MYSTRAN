! ##################################################################################################################################

   MODULE ESP0_FINAL_Interface

   INTERFACE

      SUBROUTINE ESP0_FINAL

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IBIT, LTERM_KGG, MELDOF, NELE, NGRID, NTERM_KGG, NSUB
      USE PARAMS, ONLY                :  EPSIL, SPARSTOR, SUPINFO
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  ESP0_FINAL_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE MODEL_STUF, ONLY            :  AGRID, ELDT, ELDOF, ELGP, GRID_ID, NUM_EMG_FATAL_ERRS, PLY_NUM, KE, TYPE
      USE STF_ARRAYS, ONLY            :  STFKEY, STF3
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      INTEGER(LONG)                   :: IDUM              ! Dummy variable used when flipping DOF's
      INTEGER(LONG)                   :: KSTART            ! Used in deciding whether to process all elem stiffness terms or only
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ESP0_FINAL_BEGEND

      END SUBROUTINE ESP0_FINAL

   END INTERFACE

   END MODULE ESP0_FINAL_Interface

