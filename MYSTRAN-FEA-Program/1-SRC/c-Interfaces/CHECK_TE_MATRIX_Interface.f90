! ##################################################################################################################################

   MODULE CHECK_TE_MATRIX_Interface

   INTERFACE

      SUBROUTINE CHECK_TE_MATRIX ( TE_IN, NAME_IN )


      USE PENTIUM_II_KIND, ONLY       :  LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: NAME_IN           ! Name for output purposes

      REAL(DOUBLE), INTENT(IN)        :: TE_IN(3,3)        ! Input TE matrix

      END SUBROUTINE CHECK_TE_MATRIX

   END INTERFACE

   END MODULE CHECK_TE_MATRIX_Interface

