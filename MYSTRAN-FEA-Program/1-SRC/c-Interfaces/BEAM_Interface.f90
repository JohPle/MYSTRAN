! ##################################################################################################################################

   MODULE BEAM_Interface

   INTERFACE

      SUBROUTINE BEAM

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  NUM_EMG_FATAL_ERRS
      USE SUBR_BEGEND_LEVELS, ONLY    :  BEAM_BEGEND
 
      IMPLICIT NONE 
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BEAM_BEGEND
  
      END SUBROUTINE BEAM

   END INTERFACE

   END MODULE BEAM_Interface

