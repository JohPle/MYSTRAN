! ##################################################################################################################################

   MODULE IntMKL_ERROR_MSGS_Interface

   INTERFACE

      SUBROUTINE IntMKL_ERROR_MSGS ( IER )


      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE IOUNT1, ONLY                :  ERR, F06

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: IER               ! Error indicator

      END SUBROUTINE IntMKL_ERROR_MSGS

   END INTERFACE

   END MODULE IntMKL_ERROR_MSGS_Interface

