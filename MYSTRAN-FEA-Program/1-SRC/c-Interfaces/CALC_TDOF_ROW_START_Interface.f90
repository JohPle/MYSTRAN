! ##################################################################################################################################

   MODULE CALC_TDOF_ROW_START_Interface

   INTERFACE

      SUBROUTINE CALC_TDOF_ROW_START ( PRTDEB )

 
      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NGRID
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF_ROW_START
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MODEL_STUF, ONLY            :  GRID_ID
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_TDOF_ROW_START_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: PRTDEB            ! If 'Y' then print debug info if DEBUG(183) also > 0

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_TDOF_ROW_START_BEGEND

      END SUBROUTINE CALC_TDOF_ROW_START

   END INTERFACE

   END MODULE CALC_TDOF_ROW_START_Interface

