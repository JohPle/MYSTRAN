! ##################################################################################################################################

   MODULE CC_SUBC_Interface

   INTERFACE

      SUBROUTINE CC_SUBC ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  CC_ENTRY_LEN, FATAL_ERR, LSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_SUBC_BEGEND
      USE MODEL_STUF, ONLY            :  SCNUM
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_SUBC_BEGEND
 
      END SUBROUTINE CC_SUBC

   END INTERFACE

   END MODULE CC_SUBC_Interface

