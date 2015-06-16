! ##################################################################################################################################

   MODULE SOLVE_SHELL_ALP_Interface

   INTERFACE

      SUBROUTINE SOLVE_SHELL_ALP ( SHELL_ALP_ERR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MEMATC
      USE PARAMS, ONLY                :  EPSIL

      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE MODEL_STUF, ONLY            :  SHELL_ALP, SHELL_A, SHELL_B, SHELL_D, SHELL_T, SHELL_AALP, SHELL_BALP, SHELL_DALP,        &
                                         SHELL_TALP

      IMPLICIT NONE

      INTEGER(LONG), INTENT(OUT)      :: SHELL_ALP_ERR(4)  ! Error indicator if SHELL_ALP was calculated

      END SUBROUTINE SOLVE_SHELL_ALP

   END INTERFACE

   END MODULE SOLVE_SHELL_ALP_Interface

