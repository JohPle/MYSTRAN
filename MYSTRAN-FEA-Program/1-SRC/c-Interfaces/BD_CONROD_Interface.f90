! ##################################################################################################################################

   MODULE BD_CONROD_Interface

   INTERFACE

      SUBROUTINE BD_CONROD ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF, MEDAT_CROD, NCROD, NELE, NEDAT, NPROD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CONROD_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, ETYPE, PROD, RPROD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CONROD_BEGEND
 
      END SUBROUTINE BD_CONROD

   END INTERFACE

   END MODULE BD_CONROD_Interface

