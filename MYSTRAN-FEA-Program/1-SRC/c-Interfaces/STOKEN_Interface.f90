! ##################################################################################################################################

   MODULE STOKEN_Interface

   INTERFACE

      SUBROUTINE STOKEN ( CALLING_SUBR, TOKSTR, TOKEN_BEG, STRNG_END, NTOKEN, IERROR, TOKTYP, TOKEN, ERRTOK, THRU, EXCEPT )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  MAX_TOKEN_LEN, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  STOKEN_BEGEND
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG

      IMPLICIT NONE

      CHARACTER(LEN=*)          , INTENT(IN)   :: CALLING_SUBR! Character string to tokenize 
      CHARACTER(LEN=*)          , INTENT(IN)   :: TOKSTR      ! Character string to tokenize 
      CHARACTER( 3*BYTE)        , INTENT(INOUT):: EXCEPT      ! Flag indicating whether EXCEPT is "ON " or "OFF"
      CHARACTER( 3*BYTE)        , INTENT(INOUT):: THRU        ! Flag indicating whether THRU   is "ON " or "OFF"
      CHARACTER(LEN=LEN(TOKSTR)), INTENT(OUT)  :: ERRTOK      ! Char string with data for an error to be printed by calling subr
      CHARACTER( 8*BYTE), INTENT(OUT)          :: TOKEN(3)    ! Array of 3 char tokens (e.g. could contain I1, THRU, I2)
      CHARACTER( 8*BYTE), INTENT(OUT)          :: TOKTYP(3)   ! Array of 3 char indicators of what type of tokens are in TOKEN(1-3)

      INTEGER(LONG), INTENT(IN)                :: STRNG_END   ! Column of last character in TOKSTR
      INTEGER(LONG), INTENT(INOUT)             :: TOKEN_BEG   ! On entry, where to start to look for a token in TOKSTR
      INTEGER(LONG), INTENT(OUT)               :: IERROR      ! Integer error no. when an error occurs when processing tokens
      INTEGER(LONG), INTENT(OUT)               :: NTOKEN      ! The number of tokens found in this execution
      INTEGER(LONG), PARAMETER                 :: SUBR_BEGEND = STOKEN_BEGEND

      END SUBROUTINE STOKEN

   END INTERFACE

   END MODULE STOKEN_Interface

