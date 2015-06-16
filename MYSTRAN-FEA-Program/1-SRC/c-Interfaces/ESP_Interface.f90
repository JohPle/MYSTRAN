! ##################################################################################################################################

   MODULE ESP_Interface

   INTERFACE

      SUBROUTINE ESP

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, FILE_NAM_MAXLEN, SC1, SCR, WRT_BUG, WRT_ERR, WRT_FIJ, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_KE_BIT, ELDT_BUG_SE_BIT,                                           &
                                         ELDT_F23_KE_BIT, ELDT_F24_SE_BIT, ELDT_BUG_BCHK_BIT, ELDT_BUG_BMAT_BIT, ELDT_BUG_SHPJ_BIT,&
                                         FATAL_ERR, IBIT, LTERM_KGG, LTERM_KGGD, MBUG, MELDOF, NDOFG, NELE, NGRID,                 &
                                         NTERM_KGG, NTERM_KGGD, NSUB, SOL_NAME
      USE PARAMS, ONLY                :  EPSIL, SPARSTOR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  ESP_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE MODEL_STUF, ONLY            :  AGRID, ELDT, ELDOF, ELGP, GRID_ID, NUM_EMG_FATAL_ERRS, PLY_NUM, KE, KED, TYPE
      USE STF_ARRAYS, ONLY            :  STFKEY, STF3
      USE STF_TEMPLATE_ARRAYS, ONLY   :  CROW, TEMPLATE
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: DEB_NUM   = 46    ! Debug number for output error message
      INTEGER(LONG)                   :: IDUM              ! Dummy variable used when flipping DOF's
      INTEGER(LONG)                   :: KSTART            ! Used in deciding whether to process all elem stiffness terms or only
      INTEGER(LONG)                   :: MAX_NUM           ! MAX of NTERM_KGG/NDOFG (used for DEBUG printout)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ESP_BEGEND

      END SUBROUTINE ESP

   END INTERFACE

   END MODULE ESP_Interface

