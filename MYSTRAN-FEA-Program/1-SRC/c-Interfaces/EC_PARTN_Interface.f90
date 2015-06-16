! ##################################################################################################################################

   MODULE EC_PARTN_Interface

   INTERFACE

      SUBROUTINE EC_PARTN ( CARD1, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN
      USE IOUNT1, ONLY                :  ERR, F06, MOU4, OU4, OU4_ELM_OTM, OU4_GRD_OTM, SC1
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE OUTPUT4_MATRICES, ONLY      :  NUM_OU4_REQUESTS, NUM_PARTN_REQUESTS, OU4_PART_VEC_NAMES, OU4_PART_MAT_NAMES,             &
                                         ACT_OU4_MYSTRAN_NAMES, ACT_OU4_OUTPUT_NAMES,                                              &
                                         ALLOW_OU4_MYSTRAN_NAMES, ALLOW_OU4_OUTPUT_NAMES
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CARD1             ! Card read in LOADE and shifted to begin in col 1
 
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Error indicator. If CHAR not found, IERR set to 1
 
      END SUBROUTINE EC_PARTN

   END INTERFACE

   END MODULE EC_PARTN_Interface

