! ##################################################################################################################################

   MODULE CHAR_FLD_Interface

   INTERFACE

      SUBROUTINE CHAR_FLD ( JCARDI, IFLD, CHAR_INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  IERRFL, FATAL_ERR
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)       :: JCARDI            ! The field of characters to read
      CHARACTER(LEN(JCARDI)), INTENT(OUT):: CHAR_INP          ! The character variable to read
 
      INTEGER(LONG), INTENT(IN)          :: IFLD              ! Field (2 - 9) of a Bulk Data card to read
 
      END SUBROUTINE CHAR_FLD

   END INTERFACE

   END MODULE CHAR_FLD_Interface

