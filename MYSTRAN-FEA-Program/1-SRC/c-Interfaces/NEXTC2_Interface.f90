! ##################################################################################################################################

   MODULE NEXTC2_Interface

   INTERFACE

      SUBROUTINE NEXTC2 ( PARENT, ICONT, IERR, CHILD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, IN1, INFILE
      USE SCONTR, ONLY                :  BD_ENTRY_LEN, BLNK_SUB_NAM, ECHO, FATAL_ERR, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  NEXTC2_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: PARENT            ! 

      CHARACTER(LEN=BD_ENTRY_LEN), INTENT(OUT) :: CHILD    ! 

      INTEGER(LONG), INTENT(OUT)      :: ICONT             ! =1 if next card is current card's continuation or =0 if not
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Error indicator from subr FFIELD, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = NEXTC2_BEGEND
 
      END SUBROUTINE NEXTC2

   END INTERFACE

   END MODULE NEXTC2_Interface

