! ##################################################################################################################################

   MODULE TDOF_COL_NUM_Interface

   INTERFACE

      SUBROUTINE TDOF_COL_NUM ( CHAR_SET, COL_NUM )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MTDOF, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  TDOF_COL_NUM_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CHAR_SET          ! The char description of the displ set that was input (e.g. 'G ', 'SB')
 
      INTEGER(LONG), INTENT(OUT)      :: COL_NUM           ! Col number in array TDOF where displ set CHAR_SET exists
      INTEGER(LONG), PARAMETER        :: OFFSET    = 4     ! Columns of TDOF prior to where the G-set begins
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = TDOF_COL_NUM_BEGEND

      END SUBROUTINE TDOF_COL_NUM

   END INTERFACE

   END MODULE TDOF_COL_NUM_Interface

