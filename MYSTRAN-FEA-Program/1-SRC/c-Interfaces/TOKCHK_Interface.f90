! ##################################################################################################################################

   MODULE TOKCHK_Interface

   INTERFACE

      SUBROUTINE TOKCHK ( TOKEN, TOKTYPE )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06

      IMPLICIT NONE

      CHARACTER(8*BYTE), INTENT(IN)   :: TOKEN             ! The input character string
      CHARACTER(8*BYTE), INTENT(OUT)  :: TOKTYPE           ! The type of TOKEN (see above)

      END SUBROUTINE TOKCHK

   END INTERFACE

   END MODULE TOKCHK_Interface

