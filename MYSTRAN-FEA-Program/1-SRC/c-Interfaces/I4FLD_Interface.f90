! ##################################################################################################################################

   MODULE I4FLD_Interface

   INTERFACE

      SUBROUTINE I4FLD ( JCARDI, IFLD, I4INP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  IERRFL, FATAL_ERR, JCARD_LEN, MAX_INTEGER_LEN

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: JCARDI            ! The field of 8 characters to read

      INTEGER(LONG), INTENT(IN)       :: IFLD              ! Field (2 - 9) of a Bulk Data card to read
      INTEGER(LONG), INTENT(OUT)      :: I4INP             ! The 4 byte integer value read

      END SUBROUTINE I4FLD

   END INTERFACE

   END MODULE I4FLD_Interface

