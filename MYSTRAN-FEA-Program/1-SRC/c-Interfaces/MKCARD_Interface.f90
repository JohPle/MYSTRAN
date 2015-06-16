! ##################################################################################################################################

   MODULE MKCARD_Interface

   INTERFACE

      SUBROUTINE MKCARD ( JCARD, CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  JCARD_LEN
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)            :: JCARD(10)         ! The 10 fields of characters making up CARD
      CHARACTER(LEN=10*JCARD_LEN), INTENT(OUT):: CARD              ! A MYSTRAN data card
 
      END SUBROUTINE MKCARD

   END INTERFACE

   END MODULE MKCARD_Interface

