! ##################################################################################################################################

   MODULE CC_OLOA_Interface

   INTERFACE

      SUBROUTINE CC_OLOA ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, LSUB, NSUB 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_OLOA_BEGEND
      USE MODEL_STUF, ONLY            :  SC_OLOA
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_OLOA_BEGEND
 
      END SUBROUTINE CC_OLOA

   END INTERFACE

   END MODULE CC_OLOA_Interface

