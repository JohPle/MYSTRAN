! ##################################################################################################################################

   MODULE RW_INCLUDE_FILES_Interface

   INTERFACE

      SUBROUTINE RW_INCLUDE_FILES ( UNIT_IN, UNIT_OUT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, FILE_NAM_MAXLEN, INCFIL
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC 
      USE SUBR_BEGEND_LEVELS, ONLY    :  RW_INCLUDE_FILES_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RW_INCLUDE_FILES_BEGEND
      INTEGER(LONG), INTENT(IN)       :: UNIT_IN           ! Unit number to read  INCLUDE entries from
      INTEGER(LONG), INTENT(IN)       :: UNIT_OUT          ! Unit number to write INCLUDE entries to
 
      END SUBROUTINE RW_INCLUDE_FILES

   END INTERFACE

   END MODULE RW_INCLUDE_FILES_Interface

