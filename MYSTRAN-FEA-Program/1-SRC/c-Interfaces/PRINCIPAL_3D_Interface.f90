! ##################################################################################################################################

   MODULE PRINCIPAL_3D_Interface

   INTERFACE

      SUBROUTINE PRINCIPAL_3D ( STR, PRINCIPAL_STR, MEAN, VONMISES, SIG_OCT, TAU_OCT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, HALF, TWO, THREE
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  PRINCIPAL_3D_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PRINCIPAL_3D_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: STR(6)             ! Stress or strain vector
      REAL(DOUBLE), INTENT(OUT)       :: MEAN               ! Mean stresses or strains
      REAL(DOUBLE), INTENT(OUT)       :: PRINCIPAL_STR(3)   ! Principal stresses or strains
      REAL(DOUBLE), INTENT(OUT)       :: SIG_OCT            ! Octrahedral normal stress or strain
      REAL(DOUBLE), INTENT(OUT)       :: TAU_OCT            ! Octrahedral shear  stress or strain
      REAL(DOUBLE), INTENT(OUT)       :: VONMISES           ! Octahedral stress or strain
 
      END SUBROUTINE PRINCIPAL_3D

   END INTERFACE

   END MODULE PRINCIPAL_3D_Interface

