! ##################################################################################################################################

   MODULE BD_IMBEDDED_BLANK_Interface

   INTERFACE

      SUBROUTINE BD_IMBEDDED_BLANK ( JCARD, CF2, CF3, CF4, CF5, CF6, CF7, CF8, CF9 )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, BLNK_SUB_NAM, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_IMBEDDED_BLANK_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: JCARD(10)         ! The 10 fields of characters making up CARD
 
      INTEGER(LONG), INTENT(IN)       :: CF2               ! = 2 if field 2 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF3               ! = 3 if field 3 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF4               ! = 4 if field 4 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF5               ! = 5 if field 5 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF6               ! = 6 if field 6 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF7               ! = 7 if field 7 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF8               ! = 8 if field 8 is to be checked, or 0 otherwise
      INTEGER(LONG), INTENT(IN)       :: CF9               ! = 9 if field 9 is to be checked, or 0 otherwise
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_IMBEDDED_BLANK_BEGEND
 
      END SUBROUTINE BD_IMBEDDED_BLANK

   END INTERFACE

   END MODULE BD_IMBEDDED_BLANK_Interface

