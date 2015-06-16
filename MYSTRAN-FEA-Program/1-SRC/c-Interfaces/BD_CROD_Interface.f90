! ##################################################################################################################################

   MODULE BD_CROD_Interface

   INTERFACE

      SUBROUTINE BD_CROD ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, MEDAT_CROD, NCROD, NEDAT, NELE
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CROD_BEGEND
      USE MODEL_STUF, ONLY            :  ETYPE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CROD_BEGEND
 
      END SUBROUTINE BD_CROD

   END INTERFACE

   END MODULE BD_CROD_Interface

