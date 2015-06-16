! ##################################################################################################################################
 
      SUBROUTINE CROSS ( A, B, C )
 
! Cross product of 3x1 vectors: C = A (x) B
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CROSS_BEGEND
      
      USE CROSS_USE_IFs

      IMPLICIT NONE
 
!nnn  DLL_EXPORT CROSS
!nnn  DLL_IMPORT OURTIM

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CROSS'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CROSS_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: A(3)              ! Components of input  vector A
      REAL(DOUBLE), INTENT(IN)        :: B(3)              ! Components of input  vector B
      REAL(DOUBLE), INTENT(OUT)       :: C(3)              ! Components of output vector C
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      C(1) = A(2)*B(3) - A(3)*B(2)
      C(2) = A(3)*B(1) - A(1)*B(3)
      C(3) = A(1)*B(2) - A(2)*B(1)
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************

      END SUBROUTINE CROSS
