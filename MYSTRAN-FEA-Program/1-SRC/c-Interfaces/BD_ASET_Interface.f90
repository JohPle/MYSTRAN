! ##################################################################################################################################

   MODULE BD_ASET_Interface

   INTERFACE

      SUBROUTINE BD_ASET ( CARD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1N
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, NAOCARD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_ASET_BEGEND
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD              ! A Bulk Data card
 
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_ASET_BEGEND
 
      END SUBROUTINE BD_ASET

   END INTERFACE

   END MODULE BD_ASET_Interface

