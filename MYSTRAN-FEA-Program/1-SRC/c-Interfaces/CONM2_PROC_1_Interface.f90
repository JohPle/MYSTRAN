! ##################################################################################################################################

   MODULE CONM2_PROC_1_Interface

   INTERFACE

      SUBROUTINE CONM2_PROC_1

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1Y
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DATA_NAM_LEN, FATAL_ERR, MCMASS, MCONM2, MPMASS, MRCONM2, MRPMASS, NCMASS,  &
                                         NCONM2, NCORD, NGRID, NPMASS, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CONM2_PROC_1_BEGEND
      USE MODEL_STUF, ONLY            :  CMASS, CONM2, PMASS, RCONM2, RPMASS, GRID, GRID_ID, CORD
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG

      IMPLICIT NONE
  
      CHARACTER(8*BYTE), PARAMETER    :: NAME      = 'CONM2   '
 
      INTEGER(LONG)                   :: NUM_RCONM2_RESET  ! No. RCONM2's reset to zero because they are connected to SPOINT's
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CONM2_PROC_1_BEGEND
 
      END SUBROUTINE CONM2_PROC_1

   END INTERFACE

   END MODULE CONM2_PROC_1_Interface

