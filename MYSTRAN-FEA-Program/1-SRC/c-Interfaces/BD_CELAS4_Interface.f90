! ##################################################################################################################################

   MODULE BD_CELAS4_Interface

   INTERFACE

      SUBROUTINE BD_CELAS4 ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, MEDAT_CELAS4, NCELAS4, NELE, NEDAT, NPELAS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CELAS_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, ETYPE, PELAS, RPELAS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CELAS_BEGEND
 
      END SUBROUTINE BD_CELAS4

   END INTERFACE

   END MODULE BD_CELAS4_Interface

