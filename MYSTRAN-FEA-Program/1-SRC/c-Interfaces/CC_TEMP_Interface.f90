! ##################################################################################################################################

   MODULE CC_TEMP_Interface

   INTERFACE

      SUBROUTINE CC_TEMP ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  LSUB, NSUB, NTSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_TEMP_BEGEND
      USE MODEL_STUF, ONLY            :  SUBLOD

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_TEMP_BEGEND
 
      END SUBROUTINE CC_TEMP

   END INTERFACE

   END MODULE CC_TEMP_Interface

