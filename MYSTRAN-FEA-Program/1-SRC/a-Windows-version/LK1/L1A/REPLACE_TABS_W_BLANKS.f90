! ##################################################################################################################################
 
      SUBROUTINE REPLACE_TABS_W_BLANKS ( CARD )
 
! Searches input CARD for tab characters and replaces them with 1 white space character. Used primarily for Exec Control and 
! Case Control entries (but not Bulk Data entries - which are handled differently).

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC 
      USE SUBR_BEGEND_LEVELS, ONLY    :  REPLACE_TABS_W_BLANKS_BEGEND

      USE REPLACE_TABS_W_BLANKS_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'REPLACE_TABS_W_BLANKS'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! Input entry character line
      CHARACTER(LEN=LEN(CARD))        :: CARD0             ! Temporary CARD

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REPLACE_TABS_W_BLANKS_BEGEND
		INTEGER(LONG)                   :: I                 ! DO loop index
 
! *********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGIN',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Strip all tab chars from input CARD

         CARD0(1:) = ' '
         DO I=1,LEN(CARD)
            IF (CARD(I:I) == ACHAR(9)) THEN
               CARD0(I:I) = ' '
            ELSE
               CARD0(I:I) = CARD(I:I)
            ENDIF
         ENDDO
         CARD(1:) = CARD0(1:)

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************

      END SUBROUTINE REPLACE_TABS_W_BLANKS

