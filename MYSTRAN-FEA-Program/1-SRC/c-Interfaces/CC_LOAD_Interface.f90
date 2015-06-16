! ##################################################################################################################################

   MODULE CC_LOAD_Interface

   INTERFACE

      SUBROUTINE CC_LOAD ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  LSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_LOAD_BEGEND
      USE MODEL_STUF, ONLY            :  SUBLOD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_LOAD_BEGEND
 
      END SUBROUTINE CC_LOAD

   END INTERFACE

   END MODULE CC_LOAD_Interface

