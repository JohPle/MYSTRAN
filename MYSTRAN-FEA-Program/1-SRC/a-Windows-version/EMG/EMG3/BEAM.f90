! ##################################################################################################################################
 
      SUBROUTINE BEAM
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  NUM_EMG_FATAL_ERRS
      USE SUBR_BEGEND_LEVELS, ONLY    :  BEAM_BEGEND
 
      USE BAR1_USE_IFs

      IMPLICIT NONE 
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BEAM'
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BEAM_BEGEND
  
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      FATAL_ERR = FATAL_ERR + 1
      NUM_EMG_FATAL_ERRS = NUM_EMG_FATAL_ERRS + 1
      WRITE(ERR,1)
      WRITE(F06,1)

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
    1 FORMAT(' *ERROR     : CODE NOT WRITTEN FOR BEAM ELEMENT MATRICES AS YET')

! **********************************************************************************************************************************
  
      END SUBROUTINE BEAM