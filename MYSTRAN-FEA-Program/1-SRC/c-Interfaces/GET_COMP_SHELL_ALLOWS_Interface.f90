! ##################################################################################################################################

   MODULE GET_COMP_SHELL_ALLOWS_Interface

   INTERFACE

      SUBROUTINE GET_COMP_SHELL_ALLOWS ( STRE_ALLOWABLES, STRN_ALLOWABLES )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE TIMDAT, ONLY                :  TSEC
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM
      USE MODEL_STUF, ONLY            :  ULT_STRE, ULT_STRN
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_COMP_SHELL_ALLOWS_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_COMP_SHELL_ALLOWS_BEGEND

      REAL(DOUBLE), INTENT(OUT)       :: STRE_ALLOWABLES(9)! Stress allowables for the material
      REAL(DOUBLE), INTENT(OUT)       :: STRN_ALLOWABLES(9)! Strain allowables for the material

      END SUBROUTINE GET_COMP_SHELL_ALLOWS

   END INTERFACE

   END MODULE GET_COMP_SHELL_ALLOWS_Interface

