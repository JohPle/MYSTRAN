! ##################################################################################################################################
  
      SUBROUTINE MATGET ( A, NROWA, NCOLA, BEG_ROW, BEG_COL, NROW, NCOL, B )
 
! Gets a NROW x NCOL partition of a matrix starting at row BEG_ROW and column BEG_COL
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  MATGET_BEGEND
 
      USE MATGET_USE_IFs

      IMPLICIT NONE
 
!nnn  DLL_EXPORT MATGET
!nnn  DLL_IMPORT OURTIM

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'MATGET'

      INTEGER(LONG), INTENT(IN)       :: BEG_COL           ! Beginning row of input matrix to get partition from
      INTEGER(LONG), INTENT(IN)       :: BEG_ROW           ! Beginning col of input matrix to get partition from
      INTEGER(LONG)                   :: I,J               ! DO loop indices
      INTEGER(LONG), INTENT(IN)       :: NCOLA             ! Number of cols in input matrix
      INTEGER(LONG), INTENT(IN)       :: NROWA             ! Number of rows in input matrix
      INTEGER(LONG), INTENT(IN)       :: NCOL              ! No. of cols to get from input matrix
      INTEGER(LONG), INTENT(IN)       :: NROW              ! No. of rows to get from input matrix
      INTEGER(LONG)                   :: ICNT              ! A computed index into array A
      INTEGER(LONG)                   :: ICNT0             ! Part of ICNT
      INTEGER(LONG)                   :: II                ! Counter
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MATGET_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: A(NROWA*NCOLA)    ! Input matrix from which a partition will be extracted
      REAL(DOUBLE) , INTENT(OUT)      :: B(NROW*NCOL)      ! Output matrix, which is the partition extracted from A
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize outputs

      DO I=1,NROW*NCOL
         B(I) = ZERO
      ENDDO

      ICNT0 = NROWA*(BEG_COL - 2) + BEG_ROW - 1
      II = 0
      DO J=1,NCOL
         ICNT0 = ICNT0 + NROWA
         DO I=1,NROW
            ICNT = ICNT0 + I
            II = II + 1
            B(II) = A(ICNT)
         ENDDO 
      ENDDO 
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE MATGET
