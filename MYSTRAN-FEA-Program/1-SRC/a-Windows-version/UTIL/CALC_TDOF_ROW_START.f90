! ##################################################################################################################################
 
      SUBROUTINE CALC_TDOF_ROW_START ( PRTDEB )
 
! Calculates the row number in array TDOF where a grid (or SPOINT) DOF data is to begin

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NGRID
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF_ROW_START
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MODEL_STUF, ONLY            :  GRID_ID
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_TDOF_ROW_START_BEGEND

      USE CALC_TDOF_ROW_START_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CALC_TDOF_ROW_START'
      CHARACTER(LEN=*), INTENT(IN)    :: PRTDEB            ! If 'Y' then print debug info if DEBUG(183) also > 0

      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: NUM_COMPS         ! Number of displ components (1 for SPOINT, 6 for physical grid)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_TDOF_ROW_START_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      IF ((DEBUG(183) > 0) .AND. (PRTDEB == 'Y')) THEN
         WRITE(F06,88677)
      ENDIF

      TDOF_ROW_START(1) = 1
      DO I=2,NGRID
         CALL GET_GRID_NUM_COMPS ( GRID_ID(I-1), NUM_COMPS, SUBR_NAME )
         TDOF_ROW_START(I) = TDOF_ROW_START(I-1) + NUM_COMPS
      ENDDO

      IF ((DEBUG(183) > 0) .AND. (PRTDEB == 'Y')) THEN
         DO I=1,NGRID
            WRITE(F06,88678) I, GRID_ID(I), NUM_COMPS, TDOF_ROW_START(I)
         ENDDO
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
88677 FORMAT(47x,'GRID_ID(I)      NUM_COMPS   TDOF_ROW_START')

88678 FORMAT(41X,3I14)

! **********************************************************************************************************************************

      END SUBROUTINE CALC_TDOF_ROW_START
