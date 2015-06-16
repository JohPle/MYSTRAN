! ##################################################################################################################################

   MODULE OPNERR_Interface

   INTERFACE

      SUBROUTINE OPNERR ( IOCHK, FILNAM, OUNT, WRITE_F04 )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, F04, F04FIL
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, RESTART
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  OPNERR_BEGEND
 
      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_F04         ! If 'Y' write subr begin/end times to F04 (if WRT_LOG >= SUBR_BEGEND)
 
      INTEGER(LONG), INTENT(IN)       :: IOCHK             ! IOSTAT error number when opening/reading a file
      INTEGER(LONG), INTENT(IN)       :: OUNT(2)           ! File units to write messages to
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OPNERR_BEGEND
 
      END SUBROUTINE OPNERR

   END INTERFACE

   END MODULE OPNERR_Interface

