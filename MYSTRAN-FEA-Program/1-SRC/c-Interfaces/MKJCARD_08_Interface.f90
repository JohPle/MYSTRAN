! ##################################################################################################################################

   MODULE MKJCARD_08_Interface

   INTERFACE

      SUBROUTINE MKJCARD_08 ( CARD, JCARD_08 )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*)  , INTENT(IN)  :: CARD              ! A MYSTRAN data card
      CHARACTER( 8*BYTE), INTENT(OUT) :: JCARD_08(10)         ! The 10 fields of characters making up CARD
 
      END SUBROUTINE MKJCARD_08

   END INTERFACE

   END MODULE MKJCARD_08_Interface

