! ##################################################################################################################################

   MODULE BD_CORD_Interface

   INTERFACE

      SUBROUTINE BD_CORD ( CARD, LARGE_FLD_INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, IERRFL, JCARD_LEN, JF, LCORD, NCORD, NCORD1, NCORD2, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CORD_BEGEND
      USE MODEL_STUF, ONLY            :  CORD, RCORD
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CORD_BEGEND
 
      END SUBROUTINE BD_CORD

   END INTERFACE

   END MODULE BD_CORD_Interface

