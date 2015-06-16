! ##################################################################################################################################

   MODULE BD_PLOTEL_Interface

   INTERFACE

      SUBROUTINE BD_PLOTEL ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF, MEDAT_PLOTEL, NELE, NPLOTEL
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PLOTEL_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, ETYPE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PLOTEL_BEGEND

      END SUBROUTINE BD_PLOTEL

   END INTERFACE

   END MODULE BD_PLOTEL_Interface

