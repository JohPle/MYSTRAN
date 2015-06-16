! ##################################################################################################################################

   MODULE BD_CTETRA0_Interface

   INTERFACE

      SUBROUTINE BD_CTETRA0 ( CARD, LARGE_FLD_INP, DELTA_LEDAT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, MEDAT_CTETRA4, MEDAT_CTETRA10
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CTETRA0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: DELTA_LEDAT       ! Delta number of words to add to LEDAT for this element
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CTETRA0_BEGEND
 
      END SUBROUTINE BD_CTETRA0

   END INTERFACE

   END MODULE BD_CTETRA0_Interface

