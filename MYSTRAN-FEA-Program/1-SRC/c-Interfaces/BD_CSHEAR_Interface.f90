! ##################################################################################################################################

   MODULE BD_CSHEAR_Interface

   INTERFACE

      SUBROUTINE BD_CSHEAR ( CARD, NUM_GRD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF, MEDAT_CSHEAR, NCSHEAR, NELE
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CSHEAR_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, ETYPE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card

      INTEGER(LONG), INTENT(OUT)      :: NUM_GRD           ! Number of GRID's + SPOINT's for the elem
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CSHEAR_BEGEND

      END SUBROUTINE BD_CSHEAR

   END INTERFACE

   END MODULE BD_CSHEAR_Interface

