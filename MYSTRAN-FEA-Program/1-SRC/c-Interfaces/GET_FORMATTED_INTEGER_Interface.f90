! ##################################################################################################################################

   MODULE GET_FORMATTED_INTEGER_Interface

   INTERFACE

      SUBROUTINE GET_FORMATTED_INTEGER ( INT, CHAR_INT, NUM_CHARS, NUM_DIGITS )

 
      USE PENTIUM_II_KIND, ONLY             :  BYTE, LONG
      USE IOUNT1, ONLY                      :  WRT_LOG, F04
      USE SCONTR, ONLY                      :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                      :  TSEC 
      USE SUBR_BEGEND_LEVELS, ONLY          :  GET_FORMATTED_INTEGER_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER              :: WORD_LEN  = 13    ! Length of character string that INT will be entered into
      CHARACTER(WORD_LEN*BYTE), INTENT(OUT) :: CHAR_INT          ! Integer formatted to have comma's (36879 becomes 36,879)

      INTEGER(LONG), PARAMETER              :: SUBR_BEGEND = GET_FORMATTED_INTEGER_BEGEND
      INTEGER(LONG), INTENT(IN)             :: INT               ! Integer to be converted to formated value in CHAR_INT
      INTEGER(LONG), INTENT(OUT)            :: NUM_CHARS         ! Num of non blank chars in CHAR_INT after formatting w/ commas
      INTEGER(LONG), INTENT(OUT)            :: NUM_DIGITS        ! Number of digits in INT

      END SUBROUTINE GET_FORMATTED_INTEGER

   END INTERFACE

   END MODULE GET_FORMATTED_INTEGER_Interface

