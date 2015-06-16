! ##################################################################################################################################

   MODULE LOADE0_Interface

   INTERFACE

      SUBROUTINE LOADE0

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, FILE_NAM_MAXLEN, IN0, IN1, INC, LEN_INPUT_FNAME, INFILE,           &
                                         LEN_RESTART_FNAME, LNUM_IN4_FILES, RESTART_FILNAM, SCR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN, FATAL_ERR, RESTART
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADE0_BEGEND
 
      IMPLICIT NONE

      CHARACTER( 4*BYTE), PARAMETER   :: END_CARD  = 'CEND'
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADE0_BEGEND
 
      END SUBROUTINE LOADE0

   END INTERFACE

   END MODULE LOADE0_Interface

