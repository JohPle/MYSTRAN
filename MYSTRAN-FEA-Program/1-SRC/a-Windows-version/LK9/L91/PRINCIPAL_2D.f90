! ##################################################################################################################################
 
      SUBROUTINE PRINCIPAL_2D ( SX, SY, SXY, ANGLE, SMAJOR, SMINOR, SXYMAX, MEAN, VONMISES )
 
! Calculates principal stresses or strains for 2-D shell elems: 

!     (a) If SX, SY, SXY inputs are stress then outputs are stress. 
!     (b) If SX, SY, SXY inputs are strain then outputs are strain 
 

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, QUARTER, HALF, TWO, ONEPM6, FORTY5, CONV_RAD_DEG 
      USE SUBR_BEGEND_LEVELS, ONLY    :  PRINCIPAL_2D_BEGEND
 
      USE PRINCIPAL_2D_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'PRINCIPAL_2D'

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
      REAL(DOUBLE)                    :: DENR               ! Denominator in arctan calculation of ANGLE
      REAL(DOUBLE), PARAMETER         :: EPS2    = ONEPM6   ! Small number to compare with ADENR, ANUMR when calculating ANGLE
      REAL(DOUBLE)                    :: SAVG               ! Average of SX and SY
      REAL(DOUBLE)                    :: NUMR               ! Numerator in arctan calculation of ANGLE
      REAL(DOUBLE)                    :: ADENR              ! DABS(DENR)
      REAL(DOUBLE)                    :: ANUMR              ! DABS(NUMR)
 
      INTRINSIC                       :: DABS, DATAN2, DSQRT
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize outputs

      ANGLE  = ZERO
      SMINOR = ZERO
      SXYMAX = ZERO

! Calc outputs

      DENR     = SX - SY
      NUMR     = TWO*SXY
      ADENR    = DABS(DENR)
      ANUMR    = DABS(NUMR)
 
! Calculate angle for principal axes.
 
      IF ((ADENR <= EPS2) .AND. (ANUMR <= EPS2)) THEN
         ANGLE = ZERO
      ELSE IF ((ADENR <= EPS2) .AND. (ANUMR > EPS2)) THEN
         ANGLE = FORTY5
      ELSE
         ANGLE = (HALF*DATAN2(NUMR,DENR))*CONV_RAD_DEG
      ENDIF
 
! Calculate the principal stresses and max shear
 
      SXYMAX = DSQRT(QUARTER*DENR*DENR + SXY*SXY)
      SAVG   = HALF*(SX + SY)
      SMAJOR = SAVG + SXYMAX
      SMINOR = SAVG - SXYMAX
 
! Calculate mean andvon Mises stress for 2D stress state

      MEAN     = HALF*(SMAJOR + SMINOR)
      VONMISES = DSQRT( SMAJOR*SMAJOR - SMAJOR*SMINOR + SMINOR*SMINOR)

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE PRINCIPAL_2D
