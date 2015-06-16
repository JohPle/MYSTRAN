! ##################################################################################################################################

   MODULE REAL_DATA_TO_C8FLD_Interface

   INTERFACE

      SUBROUTINE REAL_DATA_TO_C8FLD ( REAL_INP, CHAR8_OUT )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE

      IMPLICIT NONE

      CHARACTER( 8*BYTE), INTENT(OUT) :: CHAR8_OUT         ! 8 character representation of REAL_INP

      REAL(DOUBLE), INTENT(IN)        :: REAL_INP          ! Double precision real input number to be converted

      END SUBROUTINE REAL_DATA_TO_C8FLD

   END INTERFACE

   END MODULE REAL_DATA_TO_C8FLD_Interface

