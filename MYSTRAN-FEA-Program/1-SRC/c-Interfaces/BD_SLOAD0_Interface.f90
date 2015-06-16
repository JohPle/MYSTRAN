! ##################################################################################################################################

   MODULE BD_SLOAD0_Interface

   INTERFACE

      SUBROUTINE BD_SLOAD0 ( CARD, NUM_PAIRS )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IERRFL, JCARD_LEN, JF
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_SLOAD0_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*),INTENT(IN)     :: CARD                ! A Bulk Data card
 
      INTEGER(LONG), INTENT(OUT)      :: NUM_PAIRS           ! Number of pairs of SPOINT/force MAG on a SLOAD entry (can be up to 3)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_SLOAD0_BEGEND
  
      END SUBROUTINE BD_SLOAD0

   END INTERFACE

   END MODULE BD_SLOAD0_Interface

