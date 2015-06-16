! ##################################################################################################################################

   MODULE GET_ARRAY_ROW_NUM_Interface

   INTERFACE

      SUBROUTINE GET_ARRAY_ROW_NUM ( ARRAY_NAME, CALLING_SUBR, ASIZE, ARRAY, EXT_ID, ROW_NUM )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, f06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ONE, TWO
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ARRAY_ROW_NUM_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: ARRAY_NAME        ! Name of array to be searched
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Name of subr that called this one

      INTEGER(LONG), INTENT(IN)       :: ASIZE             ! Size of ARRAY
      INTEGER(LONG), INTENT(IN)       :: ARRAY(ASIZE)      ! Array to search
      INTEGER(LONG), INTENT(IN)       :: EXT_ID            ! External (actual) ID to find in ARRAY
      INTEGER(LONG), INTENT(OUT)      :: ROW_NUM           ! Internal ID (row in ARRAY) where EXT_ID exists
      INTEGER(LONG)                   :: HI, LO            ! Used to bound the range of N where EXT_ID is expected to be found
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_ARRAY_ROW_NUM_BEGEND
 
      END SUBROUTINE GET_ARRAY_ROW_NUM

   END INTERFACE

   END MODULE GET_ARRAY_ROW_NUM_Interface

