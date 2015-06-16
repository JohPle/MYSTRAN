! ##################################################################################################################################

   MODULE LOADB_RESTART_Interface

   INTERFACE

      SUBROUTINE LOADB_RESTART

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, IN1
      USE SCONTR, ONLY                :  BD_ENTRY_LEN, BLNK_SUB_NAM, ECHO, FATAL_ERR, JCARD_LEN, JF, PROG_NAME, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADB_RESTART_BEGEND 
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: NUM_PARMS = 25      ! Number of PARAM entries allowed in RESTART
      INTEGER(LONG), PARAMETER        :: NUM_DEB   = 28      ! Number of DEBUG entries allowed in RESTART

      CHARACTER( 7*BYTE), PARAMETER   :: END_CARD    = 'ENDDATA'
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADB_RESTART_BEGEND
 
      END SUBROUTINE LOADB_RESTART

   END INTERFACE

   END MODULE LOADB_RESTART_Interface

