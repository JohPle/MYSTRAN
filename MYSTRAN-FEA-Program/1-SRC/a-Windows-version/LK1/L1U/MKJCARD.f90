! ##################################################################################################################################
 
      SUBROUTINE MKJCARD ( CALLING_SUBR, CARD, JCARD )
 
! Routine to create JCARD, a set of 10 CHAR fields (each of size JCARD_LEN), from input char CARD
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  JCARD_LEN
 
      USE MKJCARD_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=*)  , INTENT(IN)       :: CALLING_SUBR      ! Subr that called this one
      CHARACTER(LEN=*)  , INTENT(IN)       :: CARD              ! A MYSTRAN data card
      CHARACTER(LEN=JCARD_LEN), INTENT(OUT):: JCARD(10)         ! The 10 fields of characters making up CARD
 
      INTEGER(LONG)                        :: I
      INTEGER(LONG)                        :: K1,K2             ! Range for setting CARD = JCARD
 
! **********************************************************************************************************************************
      DO I=1,10
         K1 = JCARD_LEN*(I-1) + 1
         K2 = K1 + JCARD_LEN - 1
         JCARD(I)(1:JCARD_LEN) = CARD(K1:K2)
      ENDDO 
      RETURN

! **********************************************************************************************************************************

! **********************************************************************************************************************************

      END SUBROUTINE MKJCARD
