! ##################################################################################################################################

   MODULE BD_CBAR0_Interface

   INTERFACE

      SUBROUTINE BD_CBAR0 ( CARD, LARGE_FLD_INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, LBAROFF, LVVEC
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_CBAR0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_CBAR0_BEGEND
 
      END SUBROUTINE BD_CBAR0

   END INTERFACE

   END MODULE BD_CBAR0_Interface

