! ##################################################################################################################################

   MODULE CC_OUTPUTS_Interface

   INTERFACE

      SUBROUTINE CC_OUTPUTS ( CARD, WHAT, SETID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, CC_CMD_DESCRIBERS, LSUB, NCCCD, NSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_OUTPUTS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: WHAT              ! Which CC type output to process (e.g., DISP, SPCF, etc)
 
      INTEGER(LONG), INTENT(OUT)      :: SETID             ! Set ID on this Case Control card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_OUTPUTS_BEGEND
 
      END SUBROUTINE CC_OUTPUTS

   END INTERFACE

   END MODULE CC_OUTPUTS_Interface

