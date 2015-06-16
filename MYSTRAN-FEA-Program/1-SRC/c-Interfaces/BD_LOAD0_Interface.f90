! ##################################################################################################################################

   MODULE BD_LOAD0_Interface

   INTERFACE

      SUBROUTINE BD_LOAD0 ( CARD, LARGE_FLD_INP, ILOAD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_LOAD0_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), INTENT(OUT)      :: ILOAD             ! Count of no. real load factors on this card. Starts with 1
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_LOAD0_BEGEND
 
      END SUBROUTINE BD_LOAD0

   END INTERFACE

   END MODULE BD_LOAD0_Interface

