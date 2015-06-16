! ##################################################################################################################################

   MODULE CARD_FLDS_NOT_BLANK_Interface

   INTERFACE

      SUBROUTINE CARD_FLDS_NOT_BLANK ( JCARD, FLD2, FLD3, FLD4, FLD5, FLD6, FLD7, FLD8, FLD9 )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CARD_FLDS_NOT_BLANK_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=JCARD_LEN), INTENT(IN):: JCARD(10)         ! The 10 fields of 8 characters making up CARD
 
      INTEGER(LONG), INTENT(IN)           :: FLD2              ! Refers to field 2 of a B.D. card. If /= 0, then check this field 
      INTEGER(LONG), INTENT(IN)           :: FLD3              ! Refers to field 3 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), INTENT(IN)           :: FLD4              ! Refers to field 4 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), INTENT(IN)           :: FLD5              ! Refers to field 5 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), INTENT(IN)           :: FLD6              ! Refers to field 6 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), INTENT(IN)           :: FLD7              ! Refers to field 7 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), INTENT(IN)           :: FLD8              ! Refers to field 8 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), INTENT(IN)           :: FLD9              ! Refers to field 9 of a B.D. card. If /= 0, then check this field
      INTEGER(LONG), PARAMETER            :: SUBR_BEGEND = CARD_FLDS_NOT_BLANK_BEGEND
 
      END SUBROUTINE CARD_FLDS_NOT_BLANK

   END INTERFACE

   END MODULE CARD_FLDS_NOT_BLANK_Interface

