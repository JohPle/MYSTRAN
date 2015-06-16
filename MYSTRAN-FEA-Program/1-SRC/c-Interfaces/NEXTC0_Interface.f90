! ##################################################################################################################################

   MODULE NEXTC0_Interface

   INTERFACE

      SUBROUTINE NEXTC0 ( CARD, ICONT, IERR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, IN1, INFILE
      USE SCONTR, ONLY                :  BD_ENTRY_LEN, BLNK_SUB_NAM, FATAL_ERR, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  NEXTC0_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A MYSTRAN data card

      INTEGER(LONG), INTENT(OUT)      :: ICONT             ! =1 if next card is current card's continuation or =0 if not
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Error indicator from subr FFIELD, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = NEXTC0_BEGEND

      END SUBROUTINE NEXTC0

   END INTERFACE

   END MODULE NEXTC0_Interface

