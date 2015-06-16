! ##################################################################################################################################

   MODULE PRINCIPAL_2D_Interface

   INTERFACE

      SUBROUTINE PRINCIPAL_2D ( SX, SY, SXY, ANGLE, SMAJOR, SMINOR, SXYMAX, MEAN, VONMISES )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, QUARTER, HALF, TWO, ONEPM6, FORTY5, CONV_RAD_DEG 
      USE SUBR_BEGEND_LEVELS, ONLY    :  PRINCIPAL_2D_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PRINCIPAL_2D_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: SX                 ! Normal x stress or strain
      REAL(DOUBLE), INTENT(IN)        :: SY                 ! Normal y stress or strain
      REAL(DOUBLE), INTENT(IN)        :: SXY                ! Shear stress or strain
      REAL(DOUBLE), INTENT(OUT)       :: ANGLE              ! Angle of principal stresses or strain
      REAL(DOUBLE), INTENT(OUT)       :: MEAN               ! Mean stresses or strain
      REAL(DOUBLE), INTENT(OUT)       :: SMAJOR             ! Major principal stress or strain
      REAL(DOUBLE), INTENT(OUT)       :: SMINOR             ! Minor principal stress or strain
      REAL(DOUBLE), INTENT(OUT)       :: SXYMAX             ! Max shear stress or strain
      REAL(DOUBLE), INTENT(OUT)       :: VONMISES           ! von Mises stress or strain
      REAL(DOUBLE), PARAMETER         :: EPS2    = ONEPM6   ! Small number to compare with ADENR, ANUMR when calculating ANGLE
 
      END SUBROUTINE PRINCIPAL_2D

   END INTERFACE

   END MODULE PRINCIPAL_2D_Interface

