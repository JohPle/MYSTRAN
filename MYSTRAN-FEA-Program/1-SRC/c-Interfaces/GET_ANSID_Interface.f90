! ##################################################################################################################################

   MODULE GET_ANSID_Interface

   INTERFACE

      SUBROUTINE GET_ANSID ( CARD, SETID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  CC_ENTRY_LEN, FATAL_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ANSID_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Case Control card (can be modified by subr CSHIFT, called herein)
 
      INTEGER(LONG), INTENT(OUT)      :: SETID             ! Set ID read from CARD after '=', if CARD contains an integer here.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_ANSID_BEGEND
 
      END SUBROUTINE GET_ANSID

   END INTERFACE

   END MODULE GET_ANSID_Interface

