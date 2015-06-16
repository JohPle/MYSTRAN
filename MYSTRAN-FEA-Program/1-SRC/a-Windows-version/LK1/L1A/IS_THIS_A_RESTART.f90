! ##################################################################################################################################
 
      SUBROUTINE IS_THIS_A_RESTART
 
! IS_THIS_A_RESTART reads in the EXEC CONTROL DECK to find if there is a RESTART entry
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  IN1
      USE SCONTR, ONLY                :  EC_ENTRY_LEN, FATAL_ERR, RESTART
      USE TIMDAT, ONLY                :  TSEC
 
      USE IS_THIS_A_RESTART_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=EC_ENTRY_LEN)     :: CARD              ! Exec Control deck card
      CHARACTER(LEN=EC_ENTRY_LEN)     :: CARD1             ! CARD shifted to begin in col 1
      CHARACTER(12*BYTE)              :: DECK_NAME   = 'EXEC CONTROL'
      CHARACTER( 4*BYTE), PARAMETER   :: END_CARD  = 'CEND'
 
      INTEGER(LONG)                   :: CHAR_COL          ! Column number on CARD where character CHAR is found
      INTEGER(LONG)                   :: IERR      = 0     ! Error indicator.
      INTEGER(LONG)                   :: IOCHK             ! IOSTAT error number when reading a Case Control card from unit IN1
 
! **********************************************************************************************************************************
! Process EXECUTIVE CONTROL DECK

		RESTART        = 'N'

      DO

         READ(IN1,101,IOSTAT=IOCHK) CARD

         IF (IOCHK < 0) THEN                               ! Quit if EOF/EOR occurs during read
            WRITE(*,1011) END_CARD
            FATAL_ERR = FATAL_ERR + 1
            CALL OUTA_HERE ( 'Y' )
         ENDIF

         IF (IOCHK > 0) THEN                               ! Check if error occurs during read.
				WRITE(*,1010) DECK_NAME
            WRITE(*,'(A)') CARD
            FATAL_ERR = FATAL_ERR + 1
            CYCLE
         ENDIF

         CALL CSHIFT ( CARD, ' ', CARD1, CHAR_COL, IERR )

         IF (CARD1(1:7) == 'RESTART'   ) THEN              ! No errors, so look for RESTART
            RESTART = 'Y'

         ELSE IF (CARD1(1:4) == 'CEND' ) THEN              ! Check for CEND card
            EXIT

         ENDIF     

      ENDDO   

! **********************************************************************************************************************************
  101 FORMAT(A)

 1010 FORMAT(' *ERROR  1010: ERROR READING FOLLOWING ',A,' ENTRY. ENTRY IGNORED')

 1011 FORMAT(' *ERROR  1011: NO ',A10,' ENTRY FOUND BEFORE END OF FILE OR END OF RECORD IN INPUT FILE')

! **********************************************************************************************************************************
 
      END SUBROUTINE IS_THIS_A_RESTART
