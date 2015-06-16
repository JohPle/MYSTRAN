!! ##################################################################################################################################
 
      SUBROUTINE CC_SPC ( CARD )
 
! Processes Case Control SPC cards for defining SPC set ID's
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  FATAL_ERR, LSUB, NSUB, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_SPC_BEGEND
      USE MODEL_STUF, ONLY            :  SPCSETS
 
      USE CC_SPC_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CC_SPC'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
      CHARACTER( 3*BYTE)              :: CARD_NAME = 'SPC' ! name of the Case Control card
 
      INTEGER(LONG)                   :: SETID             ! Set ID on this Case Control card
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_SPC_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Process SPC cards
 
! Get SETID
 
      CALL GET_SETID ( CARD ,SETID )
 
! Set Case Control variable to SETID
 
      IF (NSUB /= 0) THEN
         SPCSETS(NSUB) = SETID
      ELSE
         DO I=1,LSUB
            SPCSETS(I) = SETID
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
 
      END SUBROUTINE CC_SPC 
