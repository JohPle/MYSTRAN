! ##################################################################################################################################

   MODULE CONM2_PROC_2_Interface

   INTERFACE

      SUBROUTINE CONM2_PROC_2

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NCONM2, NCORD, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CONM2_PROC_2_BEGEND
      USE MODEL_STUF, ONLY            :  CONM2, RCONM2, GRID, GRID_ID, CORD
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
  
      CHARACTER(8*BYTE), PARAMETER    :: NAME      = 'CONM2   '
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CONM2_PROC_2_BEGEND
 
      END SUBROUTINE CONM2_PROC_2

   END INTERFACE

   END MODULE CONM2_PROC_2_Interface

