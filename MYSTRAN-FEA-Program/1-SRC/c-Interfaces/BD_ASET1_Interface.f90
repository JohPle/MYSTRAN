! ##################################################################################################################################

   MODULE BD_ASET1_Interface

   INTERFACE

      SUBROUTINE BD_ASET1 ( CARD, LARGE_FLD_INP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1N
      USE SCONTR, ONLY                :  FATAL_ERR, IERRFL, JCARD_LEN, JF, NAOCARD, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_ASET1_BEGEND
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
 
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_ASET1_BEGEND
 
      END SUBROUTINE BD_ASET1

   END INTERFACE

   END MODULE BD_ASET1_Interface

