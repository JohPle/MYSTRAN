! ##################################################################################################################################
 
      SUBROUTINE CC_METH ( CARD )
 
! Processes Case Control eigenvalue METHOD cards
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  WARN_ERR, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_METH_BEGEND
      USE MODEL_STUF, ONLY            :  CC_EIGR_SID
 
      USE CC_METH_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CC_METH'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG)                   :: SETID             ! Set ID on this Case Control card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_METH_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Process METHOD cards 
 
! Get SETID
 
      CALL GET_SETID ( CARD, SETID )
 
! Set CASE CONTROL variable to SETID
 
      IF (CC_EIGR_SID == 0) THEN
         CC_EIGR_SID = SETID
      ELSE
         CC_EIGR_SID = SETID
         WARN_ERR = WARN_ERR+1
         WRITE(ERR,8866)
         IF (SUPWARN == 'N') THEN
            WRITE(F06,8866)
         ENDIF
      ENDIF
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 8866 FORMAT(' *WARNING    : MORE THAN ONE METHOD ENTRY IN CASE CONTROL. LAST ONE READ WILL BE USED')
 
! **********************************************************************************************************************************
 
      END SUBROUTINE CC_METH
