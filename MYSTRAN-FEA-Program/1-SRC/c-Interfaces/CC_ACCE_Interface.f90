! ##################################################################################################################################

   MODULE CC_ACCE_Interface

   INTERFACE

      SUBROUTINE CC_ACCE ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LSUB, NSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_ACCE_BEGEND
      USE MODEL_STUF, ONLY            :  SC_ACCE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_ACCE_BEGEND
 
      END SUBROUTINE CC_ACCE

   END INTERFACE

   END MODULE CC_ACCE_Interface

