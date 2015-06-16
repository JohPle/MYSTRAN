! ##################################################################################################################################

      SUBROUTINE VECINORM ( X, N, X_INORM )

! Calculates the infinity norm, X_INORM, of an input vector, X, of dimension N. The infinity norm of a vector is the absolute value
! of the numerically largest term in the vector.

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  VECINORM_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO

      USE VECINORM_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'VECINORM'

      INTEGER(LONG), INTENT(IN)       :: N                 ! Dimension of the input vector X
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = VECINORM_BEGEND

      REAL(DOUBLE),  INTENT(IN)       :: X(N)              ! The input vector for which the infinity norm is calc'd      
      REAL(DOUBLE),  INTENT(OUT)      :: X_INORM           ! The calc'd infinity norm of X

      INTRINSIC                       :: DABS

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Calculate infinity norm of a vector

      X_INORM = ZERO
      DO I=1,N
         IF (DABS(X(I)) > X_INORM) THEN
            X_INORM = DABS(X(I))
         ENDIF
      ENDDO 

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************

      END SUBROUTINE VECINORM