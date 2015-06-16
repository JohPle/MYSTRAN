! ##################################################################################################################################

   MODULE R8FLD_Interface

   INTERFACE

      SUBROUTINE R8FLD ( JCARDI, IFLD, R8INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  IERRFL, FATAL_ERR, JCARD_LEN
      USE CONSTANTS_1, ONLY           :  ZERO
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: JCARDI            ! The field of 8 characters to read
 
      INTEGER(LONG), INTENT(IN)       :: IFLD              ! Field (2 - 9) of a Bulk Data card to read
 
      REAL(DOUBLE) , INTENT(OUT)      :: R8INP             ! The 8 byte real value read
 
      END SUBROUTINE R8FLD

   END INTERFACE

   END MODULE R8FLD_Interface

