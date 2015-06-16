! ##################################################################################################################################
 
      SUBROUTINE PARSE_CHAR_STRING ( CHAR_STRING, STRING_LEN, MAX_WORDS, MWLEN, NUM_WORDS, WORDS, IERR )
 
! Parses a character string whose words are separated by blanks and/or commas into a 1-D array, WORDS, of the words in the string.
! For example, if CHAR_STRING is the string (without quotes): "  SORT1 ,   REAL,PRINT  ,,  ,  QAZ  VONMISES", then this subr
! parses CHAR_STRING into 5 words in the array WORDS:

!                            WORDS(1) = SORT1
!                            WORDS(2) = REAL
!                            WORDS(3) = PRINT
!                            WORDS(4) = QAZ
!                            WORDS(5) = VONMISES

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS 
      USE SUBR_BEGEND_LEVELS, ONLY    :  PARSE_CHAR_STRING_BEGEND

      USE PARSE_CHAR_STRING_USE_IFs

      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)        :: MAX_WORDS          ! Dim of WORDS (number of words in CHAR_STRING cannot exceed this)
      INTEGER(LONG), INTENT(IN)        :: MWLEN              ! Maximum length, in characters, of the entries in array WORDS

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)) :: SUBR_NAME = 'PARSE_CHAR_STRING'
      CHARACTER(LEN=*)    , INTENT(IN) :: CHAR_STRING        ! Character string to be parsed
      CHARACTER(LEN=MWLEN), INTENT(OUT):: WORDS(MAX_WORDS)   ! Array of the words parsed from CHAR_STRING.
      CHARACTER(LEN=MWLEN)             :: WORD               ! One word that will go into array WORDS

      INTEGER(LONG), INTENT(IN)        :: STRING_LEN         ! Length, in characters, of CHAR_STRING
      INTEGER(LONG), INTENT(OUT)       :: IERR               ! Error designator
      INTEGER(LONG), INTENT(OUT)       :: NUM_WORDS          ! Number of distinct words in CHAR_STRING
      INTEGER(LONG)                    :: CHAR_COUNT         ! Index into CHAR_STRING to a character in that string (not ' ' or ',')
      INTEGER(LONG)                    :: I                  ! DO loop index
      INTEGER(LONG)                    :: WORD_LEN           ! Length of one of the words in CHAR_STRING (must be <= MWLEN)
      INTEGER(LONG), PARAMETER         :: SUBR_BEGEND = PARSE_CHAR_STRING_BEGEND
 
! *********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGIN',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize

      DO I=1,MAX_WORDS
         WORDS(I)(1:) = ' '
      ENDDO

      IERR = 0

! Call debug code if requested

      IF (DEBUG(173) >= 1) CALL DEBUG_PARSE_CSV_STRNG ( 1 )

! Parse words from CHAR_STRING

      CHAR_COUNT = 0
      NUM_WORDS  = 0
nwrds:DO

         CHAR_COUNT = CHAR_COUNT + 1

         IF (CHAR_COUNT > STRING_LEN) THEN

            EXIT nwrds

         ELSE

            IF ((CHAR_STRING(CHAR_COUNT:CHAR_COUNT) == ',') .OR. (CHAR_STRING(CHAR_COUNT:CHAR_COUNT) == ' ')) THEN

               CYCLE nwrds

            ELSE

               WORD_LEN  = 0
               NUM_WORDS = NUM_WORDS + 1

               WORD(1:) = ' '
one_wrd:       DO
                  WORD_LEN = WORD_LEN + 1
                  IF (DEBUG(173) > 1) CALL DEBUG_PARSE_CSV_STRNG ( 2 )
                  IF (WORD_LEN > MWLEN) THEN
                     CALL QUIT ( 1 )
                     IERR = 2
                     EXIT one_wrd
                  ENDIF
                  WORD(WORD_LEN:WORD_LEN) = CHAR_STRING(CHAR_COUNT:CHAR_COUNT)
                  CHAR_COUNT = CHAR_COUNT + 1
                  IF (CHAR_COUNT > STRING_LEN+1) THEN      ! Need +1 in order to get last WORD put into array WORDS
                     EXIT nwrds
                  ENDIF
                  IF ((CHAR_STRING(CHAR_COUNT:CHAR_COUNT) == ',') .OR. (CHAR_STRING(CHAR_COUNT:CHAR_COUNT) == ' ')) THEN
                     EXIT one_wrd
                  ELSE
                     CYCLE one_wrd
                  ENDIF
               ENDDO one_wrd

               IF (NUM_WORDS > MAX_WORDS) THEN
                  CALL QUIT ( 2 )
                  IERR = 1
                  RETURN
               ENDIF

               WORDS(NUM_WORDS) = WORD

               IF (DEBUG(173) > 1) CALL DEBUG_PARSE_CSV_STRNG ( 3 )

            ENDIF

         ENDIF

      ENDDO nwrds 

      IF (DEBUG(173) >= 1) CALL DEBUG_PARSE_CSV_STRNG ( 4 )

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! ##################################################################################################################################
 
      CONTAINS
 
! ##################################################################################################################################

      SUBROUTINE QUIT ( OPT )

      IMPLICIT NONE

      INTEGER(LONG)                   :: OPT               ! Tells which option to use here

      FATAL_ERR = FATAL_ERR + 1

      IF (OPT == 1) THEN
         WRITE(ERR,961) SUBR_NAME, MWLEN
         WRITE(F06,961) SUBR_NAME, MWLEN
      ELSE IF (OPT == 2) THEN 
         WRITE(ERR,962) SUBR_NAME, MAX_WORDS
         WRITE(F06,962) SUBR_NAME, MAX_WORDS
      ENDIF

! **********************************************************************************************************************************
  961 FORMAT(' *ERROR   961: PROGRAMMING ERROR IN SUBROUTINE ',A,'. THE LENGTH OF A WORD IN ABOVE CHARACTER STRING'                &
                    ,/,14X,' EXCEEDED',I5,' (MAXIMUM ALLOWABLE NUMBER OF CHARACTERS)')

  962 FORMAT(' *ERROR   962: PROGRAMMING ERROR IN SUBROUTINE ',A,'. THE NUMBER OF WORDS IN ABOVE CHARACTER STRING'                 &
                    ,/,14X,' EXCEEDED',I5,' (MAXIMUM ALLOWABLE NUMBER OF WORDS)')

! **********************************************************************************************************************************

      END SUBROUTINE QUIT

! ##################################################################################################################################

      SUBROUTINE DEBUG_PARSE_CSV_STRNG ( WHAT )

      INTEGER(LONG)                   :: WHAT

! **********************************************************************************************************************************
      IF (WHAT == 1) THEN
         WRITE(F06,10)
         WRITE(F06,11)
         WRITE(F06,12) CHAR_STRING(1:STRING_LEN)
         WRITE(F06,*)
      ENDIF

      IF (WHAT == 2) THEN
         WRITE(F06,21) NUM_WORDS, CHAR_COUNT, CHAR_STRING(CHAR_COUNT:CHAR_COUNT) 
      ENDIF

      IF (WHAT == 3) THEN
         WRITE(F06,*)
      ENDIF

      IF (WHAT == 4) THEN
         WRITE(F06,41) NUM_WORDS, STRING_LEN
         DO I=1,NUM_WORDS
            WRITE(F06,42) I, WORDS(I)
         ENDDO
         WRITE(F06,*)
         WRITE(F06,10)
      ENDIF

! **********************************************************************************************************************************
   10 FORMAT('******************************************************************************')

   11 FORMAT('In subr PARSE_CHAR_STRING:',/)

   12 FORMAT('   CHAR_STRING = "',A,'"')

   21 FORMAT('   Word num, I, CHAR_STRING(I:I) = ',I3,I4,2X,A)

   41 FORMAT('   There are ',I2,' word(s) in the ',I3,' character variable CHAR_STRING:',/,                                          &
             '   --------------------------------------------------------------')

   42 FORMAT('     Word ',I2,' = "',A,'"')

! **********************************************************************************************************************************

      END SUBROUTINE DEBUG_PARSE_CSV_STRNG

      END SUBROUTINE PARSE_CHAR_STRING

