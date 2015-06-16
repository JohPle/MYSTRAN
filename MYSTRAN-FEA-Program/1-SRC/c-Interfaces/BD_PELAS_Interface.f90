! ##################################################################################################################################

   MODULE BD_PELAS_Interface

   INTERFACE

      SUBROUTINE BD_PELAS ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPELAS, NPELAS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PELAS_BEGEND
      USE MODEL_STUF, ONLY            :  PELAS, RPELAS
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PELAS_BEGEND
 
      END SUBROUTINE BD_PELAS

   END INTERFACE

   END MODULE BD_PELAS_Interface

