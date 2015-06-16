! ##################################################################################################################################

   MODULE CC_METH_Interface

   INTERFACE

      SUBROUTINE CC_METH ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  WARN_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_METH_BEGEND
      USE MODEL_STUF, ONLY            :  CC_EIGR_SID
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_METH_BEGEND
 
      END SUBROUTINE CC_METH

   END INTERFACE

   END MODULE CC_METH_Interface

