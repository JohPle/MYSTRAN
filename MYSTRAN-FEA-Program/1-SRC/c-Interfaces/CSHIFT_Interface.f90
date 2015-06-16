! ##################################################################################################################################

   MODULE CSHIFT_Interface

   INTERFACE

      SUBROUTINE CSHIFT ( CARD_IN, CHAR, CARD_SHIFTED, CHAR_COL, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CSHIFT_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*) , INTENT(IN)            :: CARD_IN           ! Input Case Control card
      CHARACTER(LEN=LEN(CARD_IN)) , INTENT(OUT):: CARD_SHIFTED      ! C.C. card shifted to begin in 1st nonblank col after CHAR_COL
      CHARACTER(1*BYTE), INTENT(IN)            :: CHAR              ! Character to find in CARD
 
      INTEGER(LONG), INTENT(OUT)               :: IERR              ! Error indicator. If CHAR not found, IERR set to 1
      INTEGER(LONG), INTENT(OUT)               :: CHAR_COL          ! Column number on CARD where character CHAR is found
      INTEGER(LONG), PARAMETER                 :: SUBR_BEGEND = CSHIFT_BEGEND

      END SUBROUTINE CSHIFT

   END INTERFACE

   END MODULE CSHIFT_Interface

