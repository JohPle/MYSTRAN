! ##################################################################################################################################

   MODULE EC_OUTPUT4_Interface

   INTERFACE

      SUBROUTINE EC_OUTPUT4 ( CARD1, IERR, ANY_OU4_NAME_BAD )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN
      USE IOUNT1, ONLY                :  ERR, F06, MOU4, OU4, OU4_ELM_OTM, OU4_GRD_OTM, SC1
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE OUTPUT4_MATRICES, ONLY      :  NUM_OU4_VALID_NAMES, TAPE_ACTION_MAX_VAL, TAPE_ACTION_MIN_VAL, NUM_OU4_REQUESTS,          &
                                         OU4_FILE_UNITS, OU4_TAPE_ACTION, ACT_OU4_MYSTRAN_NAMES, ACT_OU4_OUTPUT_NAMES,             &
                                         ALLOW_OU4_MYSTRAN_NAMES, ALLOW_OU4_OUTPUT_NAMES
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD1             ! Card read in LOADE and shifted to begin in col 1
      CHARACTER(LEN=*), INTENT(OUT)   :: ANY_OU4_NAME_BAD  ! 'Y'/'N' if requested OUTPUT4 matrix name is valid
 
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Error indicator. If CHAR not found, IERR set to 1
 
      END SUBROUTINE EC_OUTPUT4

   END INTERFACE

   END MODULE EC_OUTPUT4_Interface

