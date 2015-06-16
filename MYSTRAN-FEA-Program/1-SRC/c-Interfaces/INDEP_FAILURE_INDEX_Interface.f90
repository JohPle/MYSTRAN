! ##################################################################################################################################

   MODULE INDEP_FAILURE_INDEX_Interface

   INTERFACE

      SUBROUTINE INDEP_FAILURE_INDEX ( STREi, STRNi, STRE_ALLOWABLES, STRN_ALLOWABLES, FAILURE_INDEX )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE PARAMS, ONLY                :  EPSIL
      USE MODEL_STUF, ONLY            :  FAILURE_THEORY
      USE SUBR_BEGEND_LEVELS, ONLY    :  INDEP_FAILURE_INDEX_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = INDEP_FAILURE_INDEX_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: STRE_ALLOWABLES(9)! Allowable stresses (incl tension and compr for normal stresses)
      REAL(DOUBLE), INTENT(IN)        :: STRN_ALLOWABLES(9)! Allowable strains (incl tension and compr for normal stresses)
      REAL(DOUBLE), INTENT(IN)        :: STREi(6)          ! 6 components of strain
      REAL(DOUBLE), INTENT(IN)        :: STRNi(6)          ! 6 components of stress
      REAL(DOUBLE), INTENT(OUT)       :: FAILURE_INDEX     ! Failure index (scalar value)

      END SUBROUTINE INDEP_FAILURE_INDEX

   END INTERFACE

   END MODULE INDEP_FAILURE_INDEX_Interface

