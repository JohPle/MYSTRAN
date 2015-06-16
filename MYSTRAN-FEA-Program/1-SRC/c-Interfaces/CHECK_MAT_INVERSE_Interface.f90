! ##################################################################################################################################

   MODULE CHECK_MAT_INVERSE_Interface

   INTERFACE

      SUBROUTINE CHECK_MAT_INVERSE ( MAT_NAME, A, AI, NSIZE )


      USE PENTIUM_II_KIND, ONLY        : BYTE, DOUBLE, LONG
      USE IOUNT1, ONLY                 : ERR, F06
      USE CONSTANTS_1, ONLY            : ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                 :  EPSIL

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Name of input matrix

      INTEGER(LONG), INTENT(IN)       :: NSIZE             ! Row/col size of input matrices
      REAL(DOUBLE) , INTENT(IN)       :: A(NSIZE,NSIZE)    ! Matrix to invert
      REAL(DOUBLE) , INTENT(IN)       :: AI(NSIZE,NSIZE)   ! Inverse of A

      END SUBROUTINE CHECK_MAT_INVERSE

   END INTERFACE

   END MODULE CHECK_MAT_INVERSE_Interface

