! ##################################################################################################################################

   MODULE FFIELD_Interface

   INTERFACE

      SUBROUTINE FFIELD ( CARD, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, BD_ENTRY_LEN, FATAL_ERR, IMB_BLANK, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  FFIELD_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*),  INTENT(INOUT):: CARD              ! 
 
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! = 1 if a field  is longer than 8 chars on a free field card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FFIELD_BEGEND
 
      END SUBROUTINE FFIELD

   END INTERFACE

   END MODULE FFIELD_Interface

