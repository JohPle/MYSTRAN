! ##################################################################################################################################
 
      SUBROUTINE CC_NLPARM ( CARD )
 
! Processes Case Control NLPARM cards
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LSUB, NSUB, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  CC_NLPARM_BEGEND
      USE NONLINEAR_PARAMS, ONLY      :  NL_SID
 
      USE CC_NLPARM_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'CC_NLPARM'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG)                   :: SETID             ! Set ID on this Case Control card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CC_NLPARM_BEGEND
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Process NLPARM cards
 
! Find out if "NONE", "ALL" or SETID
 
      CALL GET_SETID ( CARD, SETID )   
 
! Set CASE CONTROL variable to SETID
 
      IF (SOL_NAME(1:8) == 'NLSTATIC') THEN
         IF (NSUB /= 0) THEN
            NL_SID(NSUB) = SETID
         ELSE
            DO I = 1,LSUB
               NL_SID(I) = SETID
           ENDDO
         ENDIF
      ELSE
         FATAL_ERR = FATAL_ERR + 1
         WRITE(ERR,1203) 'NLPARM'
         WRITE(F06,1203) 'NLPARM'
      ENDIF
 
! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 1203 FORMAT(' *ERROR  1203: CASE CONTROL ENTRY ',A,' ONLY VALID IN SOL NLSTATIC (SOL 4)')

! **********************************************************************************************************************************

      END SUBROUTINE CC_NLPARM 
