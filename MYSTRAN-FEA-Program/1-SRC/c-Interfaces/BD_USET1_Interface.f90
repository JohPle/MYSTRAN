! ##################################################################################################################################

   MODULE BD_USET1_Interface

   INTERFACE

      SUBROUTINE BD_USET1 ( CARD, LARGE_FLD_INP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1X
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, NUM_USET_RECORDS
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_USET1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'BD_USET1'
      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format
      CHARACTER( 2*BYTE)              :: USET_NAME         ! Name in field 2 of the USET entry

      INTEGER(LONG)                   :: GRIDJ1    = 0     ! Grid ID on USET1 card
      INTEGER(LONG)                   :: GRIDJ2    = 0     ! Grid ID on USET1 card
      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_USET1_BEGEND

      END SUBROUTINE BD_USET1

   END INTERFACE

   END MODULE BD_USET1_Interface

