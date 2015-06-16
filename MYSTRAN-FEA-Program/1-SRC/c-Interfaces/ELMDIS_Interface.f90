! ##################################################################################################################################

   MODULE ELMDIS_Interface

   INTERFACE

      SUBROUTINE ELMDIS

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, meldof, MELGP, NCORD, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMDIS_BEGEND
      USE MODEL_STUF, ONLY            :  AGRID, CAN_ELEM_TYPE_OFFSET, GRID, CORD, BGRID, ELGP, ELDOF, GRID_ID, OFFSET, OFFDIS,     &
                                         TE, TYPE, UEB, UEG, UEL, UGG
      USE COL_VECS, ONLY              :  UG_COL
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: NCOLA     = 3     ! An input to subr MATMULT_FFF called herein
      INTEGER(LONG), PARAMETER        :: NCOLB     = 1     ! An input to subr MATMULT_FFF called herein
      INTEGER(LONG), PARAMETER        :: NROWA     = 3     ! An input to subr MATMULT_FFF called herein
      INTEGER(LONG), PARAMETER        :: NROW      = 3     ! An input to subr MATPUT, MATGET called herein
      INTEGER(LONG), PARAMETER        :: NCOL      = 1     ! An input to subr MATPUT, MATGET called herein
      INTEGER(LONG), PARAMETER        :: PCOL      = 1     ! An input to subr MATPUT, MATGET called herein 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMDIS_BEGEND
 
      REAL(DOUBLE)                    :: THETAD,PHID       ! Returns from subr GEN_T0L (not used here)
 
      END SUBROUTINE ELMDIS

   END INTERFACE

   END MODULE ELMDIS_Interface

