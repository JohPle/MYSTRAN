! ##################################################################################################################################

   MODULE MKJCARD_Interface

   INTERFACE

      SUBROUTINE MKJCARD ( CALLING_SUBR, CARD, JCARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  JCARD_LEN
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*)  , INTENT(IN)       :: CALLING_SUBR      ! Subr that called this one
      CHARACTER(LEN=*)  , INTENT(IN)       :: CARD              ! A MYSTRAN data card
      CHARACTER(LEN=JCARD_LEN), INTENT(OUT):: JCARD(10)         ! The 10 fields of characters making up CARD
 
      END SUBROUTINE MKJCARD

   END INTERFACE

   END MODULE MKJCARD_Interface

