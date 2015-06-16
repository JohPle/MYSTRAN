! ##################################################################################################################################

   MODULE BD_PARVEC1_Interface

   INTERFACE

      SUBROUTINE BD_PARVEC1 ( CARD, LARGE_FLD_INP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1V
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, IERRFL, JCARD_LEN, JF, NUM_PARTVEC_RECORDS, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES
      USE SUBR_BEGEND_LEVELS, ONLY    :  BD_PARVEC1_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(INOUT) :: CARD              ! A Bulk Data card
      CHARACTER(LEN=*), INTENT(IN)    :: LARGE_FLD_INP     ! If 'Y', CARD is large field format

      INTEGER(LONG)                   :: IDUM              ! Dummy arg in subr IP^CHK not used herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BD_PARVEC1_BEGEND

      END SUBROUTINE BD_PARVEC1

   END INTERFACE

   END MODULE BD_PARVEC1_Interface

