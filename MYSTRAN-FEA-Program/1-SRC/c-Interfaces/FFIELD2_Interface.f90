! ##################################################################################################################################

   MODULE FFIELD2_Interface

   INTERFACE

      SUBROUTINE FFIELD2 ( CARD1, CARD2, CARD, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, BD_ENTRY_LEN, ECHO, FATAL_ERR, IMB_BLANK, JCARD_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  FFIELD2_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*),  INTENT(IN)   :: CARD1             ! 1st physical entry of the large field entry
      CHARACTER(LEN=*),  INTENT(IN)   :: CARD2             ! 2nd physical entry of the large field entry
      CHARACTER(LEN=*),  INTENT(OUT)  :: CARD              ! Card with 10 fields of 16 cols each with the data from CARD1, CARD2
 
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! = 1 if a field  is longer than 8 chars on a free field card
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FFIELD2_BEGEND
 
      END SUBROUTINE FFIELD2

   END INTERFACE

   END MODULE FFIELD2_Interface

