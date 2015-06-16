! ##################################################################################################################################
 
      SUBROUTINE GET_CHAR_STRING_END ( CHAR_STRING, IEND )
 
! Searches integer array ARRAY to find column where data ends (IEND)

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_CHAR_STRING_END_BEGEND
 
      USE GET_CHAR_STRING_END_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'GET_CHAR_STRING_END'
      CHARACTER(LEN=*) , INTENT(IN)   :: CHAR_STRING       ! String to get ending of

      INTEGER(LONG)    , INTENT(OUT)  :: IEND              ! Col where CHAR_STRING stops having non blanks 
      INTEGER(LONG)                   :: I                 ! DO loop index
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_CHAR_STRING_END_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      IEND = LEN(CHAR_STRING)
      DO I=LEN(CHAR_STRING),1,-1
         IF (CHAR_STRING(I:I) /= ' ') THEN
            IEND = I
            EXIT
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

      END SUBROUTINE GET_CHAR_STRING_END
