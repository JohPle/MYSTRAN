! ##################################################################################################################################

   MODULE GET_SETID_Interface

   INTERFACE

      SUBROUTINE GET_SETID ( CARD, SETID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  CC_ENTRY_LEN, FATAL_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_SETID_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Case Control card (can be modified by subr CSHIFT, called herein)
 
      INTEGER(LONG), INTENT(OUT)      :: SETID             ! Set ID read from CARD after '=', if CARD contains an integer here.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_SETID_BEGEND
 
      END SUBROUTINE GET_SETID

   END INTERFACE

   END MODULE GET_SETID_Interface

