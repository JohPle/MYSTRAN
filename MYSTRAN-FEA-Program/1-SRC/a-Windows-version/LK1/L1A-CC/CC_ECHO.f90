! ##################################################################################################################################
 
      SUBROUTINE CC_ECHO ( CARD )
 
! Processes Case Control ECHO cards
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ECHO, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_ECHO_BEGEND
 
      USE CC_ECHO_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CC_ECHO'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER(LEN=LEN(CARD))        :: CARD1             ! CARD shifted to begin in col after "=" sign
 
      INTEGER(LONG)                   :: ECOL              ! Col, on CARD, where "=" sign is located
      INTEGER(LONG)                   :: IERR              ! Output from subr CSHIFT indicating an error
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_ECHO_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Process ECHO card 
 
      CALL CSHIFT ( CARD, '=', CARD1, ECOL, IERR )
      IF (IERR == 0) THEN
         IF      (CARD1(1:4) == 'NONE') THEN
            ECHO = 'NONE  '
         ELSE IF (CARD1(1:4) == 'BOTH') THEN
            ECHO = 'BOTH  '
         ELSE IF (CARD1(1:4) == 'SORT') THEN
            ECHO = 'SORT  '
         ELSE IF (CARD1(1:6) == 'UNSORT') THEN
            ECHO = 'UNSORT'
         ELSE
            ECHO = 'UNSORT'
            WARN_ERR = WARN_ERR + 1
            WRITE(ERR,8863) CARD1(1:8)
            IF (SUPWARN == 'N') THEN
               WRITE(F06,8863) CARD1(1:8)
            ENDIF
         ENDIF
      ELSE
         WARN_ERR = WARN_ERR + 1
         WRITE(ERR,8876)
         IF (SUPWARN == 'N') THEN
            WRITE(F06,8876)
         ENDIF
         ECHO = 'UNSORT'
      ENDIF
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 8863 FORMAT(' *WARNING    : ERROR ON CASE CONTROL DECK ECHO CARD.  ENTRY = ',A8,' INCORRECT. DEFAULT UNSORT WILL BE USED')
 
 8876 FORMAT(' *WARNING    : MISSING EQUAL (=) SIGN ON CASE CONTROL ECHO CARD. DEFAULT UNSORT WILL BE USED')

! **********************************************************************************************************************************
 
      END SUBROUTINE CC_ECHO
