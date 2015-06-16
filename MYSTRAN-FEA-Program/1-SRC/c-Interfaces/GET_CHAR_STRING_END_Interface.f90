! ##################################################################################################################################

   MODULE GET_CHAR_STRING_END_Interface

   INTERFACE

      SUBROUTINE GET_CHAR_STRING_END ( CHAR_STRING, IEND )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_CHAR_STRING_END_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*) , INTENT(IN)   :: CHAR_STRING       ! String to get ending of

      INTEGER(LONG)    , INTENT(OUT)  :: IEND              ! Col where CHAR_STRING stops having non blanks 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_CHAR_STRING_END_BEGEND

      END SUBROUTINE GET_CHAR_STRING_END

   END INTERFACE

   END MODULE GET_CHAR_STRING_END_Interface

