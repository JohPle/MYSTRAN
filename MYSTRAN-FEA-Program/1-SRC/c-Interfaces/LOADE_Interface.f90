! ##################################################################################################################################

   MODULE LOADE_Interface

   INTERFACE

      SUBROUTINE LOADE

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, IN1
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN, CHKPNT, FATAL_ERR, WARN_ERR, JCARD_LEN, JF,     &
                                         PROG_NAME, SOL_NAME, RESTART
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN

      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES, ACT_OU4_OUTPUT_NAMES, ALLOW_OU4_MYSTRAN_NAMES,                     &
                                         ALLOW_OU4_OUTPUT_NAMES, OU4_PART_MAT_NAMES, OU4_PART_VEC_NAMES, NUM_OU4_VALID_NAMES

      USE SUBR_BEGEND_LEVELS, ONLY    :  LOADE_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=JCARD_LEN)        :: CHARFLD           ! Character field used when suvr I4FLD is called
      CHARACTER( 4*BYTE), PARAMETER   :: END_CARD  = 'CEND'

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = LOADE_BEGEND
 
      END SUBROUTINE LOADE

   END INTERFACE

   END MODULE LOADE_Interface

