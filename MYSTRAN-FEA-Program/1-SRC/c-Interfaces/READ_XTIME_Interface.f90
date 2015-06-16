! ##################################################################################################################################

   MODULE READ_XTIME_Interface

   INTERFACE

      SUBROUTINE READ_XTIME ( UNT, FILNAM, MESSAG, OUNT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC 
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_XTIME_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description. Used for error messaging
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name

      INTEGER(LONG), INTENT(IN)       :: UNT               ! File unit number
      INTEGER(LONG), INTENT(IN)       :: OUNT(2)           ! File units to write messages to
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_XTIME_BEGEND
 
      END SUBROUTINE READ_XTIME

   END INTERFACE

   END MODULE READ_XTIME_Interface

