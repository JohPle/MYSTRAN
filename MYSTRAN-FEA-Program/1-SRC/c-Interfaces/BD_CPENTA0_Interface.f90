! ##################################################################################################################################

   MODULE BD_CPENTA0_Interface

   INTERFACE

      SUBROUTINE BD_CPENTA0 ( CARD, LARGE_FLD_INP, DELTA_LEDAT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, MEDAT_CPENTA6, MEDAT_CPENTA15
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CPENTA0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format

      INTEGER(LONG), INTENT(OUT)      :: DELTA_LEDAT       ! Delta number of words to add to LEDAT for this element
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CPENTA0_BEGEND
 
      END SUBROUTINE BD_CPENTA0

   END INTERFACE

   END MODULE BD_CPENTA0_Interface

