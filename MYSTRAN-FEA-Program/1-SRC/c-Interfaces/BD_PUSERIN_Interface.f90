! ##################################################################################################################################

   MODULE BD_PUSERIN_Interface

   INTERFACE

      SUBROUTINE BD_PUSERIN ( CARD )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, NUM_IN4_FILES
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, LPUSERIN, NPUSERIN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PUSERIN_BEGEND
      USE MODEL_STUF, ONLY            :  PUSERIN, USERIN_MAT_NAMES
 
      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME     = 'BD_PUSERIN'
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG)                   :: IN4_NUM           ! IN4 file number read from field 3 of RPUSERIN entry
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PUSERIN_BEGEND

      END SUBROUTINE BD_PUSERIN

   END INTERFACE

   END MODULE BD_PUSERIN_Interface

