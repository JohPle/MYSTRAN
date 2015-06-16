! ##################################################################################################################################

   MODULE PARSE_CHAR_STRING_Interface

   INTERFACE

      SUBROUTINE PARSE_CHAR_STRING ( CHAR_STRING, STRING_LEN, MAX_WORDS, MWLEN, NUM_WORDS, WORDS, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS 
      USE SUBR_BEGEND_LEVELS, ONLY    :  PARSE_CHAR_STRING_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)        :: MAX_WORDS          ! Dim of WORDS (number of words in CHAR_STRING cannot exceed this)
      INTEGER(LONG), INTENT(IN)        :: MWLEN              ! Maximum length, in characters, of the entries in array WORDS

      CHARACTER(LEN=*)    , INTENT(IN) :: CHAR_STRING        ! Character string to be parsed
      CHARACTER(LEN=MWLEN), INTENT(OUT):: WORDS(MAX_WORDS)   ! Array of the words parsed from CHAR_STRING.

      INTEGER(LONG), INTENT(IN)        :: STRING_LEN         ! Length, in characters, of CHAR_STRING
      INTEGER(LONG), INTENT(OUT)       :: IERR               ! Error designator
      INTEGER(LONG), INTENT(OUT)       :: NUM_WORDS          ! Number of distinct words in CHAR_STRING
      INTEGER(LONG), PARAMETER         :: SUBR_BEGEND = PARSE_CHAR_STRING_BEGEND
 
      END SUBROUTINE PARSE_CHAR_STRING

   END INTERFACE

   END MODULE PARSE_CHAR_STRING_Interface

