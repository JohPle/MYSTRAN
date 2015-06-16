! ##################################################################################################################################
 
      SUBROUTINE CC_ENFO ( CARD )
 
! Processes Case Control ENFO (ENFORCED) entries
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ENFFIL, ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  WARN_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_ENFO_BEGEND
 
      USE CC_ENFO_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CC_ENFO'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER(LEN=LEN(CARD))        :: CARD1             ! CARD shifted to begin in col after "=" sign
 
      INTEGER(LONG)                   :: ECOL              ! Col, on CARD, where "=" sign is located
      INTEGER(LONG)                   :: IEND              ! Col where end of data is on CARD1
      INTEGER(LONG)                   :: IERR              ! Output from subr CSHIFT indicating an error
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_ENFO_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Process ENFORCED card 
 
      CALL CSHIFT ( CARD, '=', CARD1, ECOL, IERR )
      IF (IERR /= 0) THEN
         WARN_ERR = WARN_ERR + 1
         WRITE(ERR,8862)
         IF (SUPWARN == 'N') THEN
            WRITE(F06,8862)
         ENDIF
      ENDIF

      CALL GET_CHAR_STRING_END ( CARD1, IEND )
      ENFFIL = CARD1(1:IEND)
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 8862 FORMAT(' *WARNING    : MISSING EQUAL (=) SIGN ON CASE CONTROL CARD: (TITLE, SUBTITLE, LABEL OR ENFORCED).')
 
! **********************************************************************************************************************************
 
      END SUBROUTINE CC_ENFO
