! ##################################################################################################################################

   MODULE FILE_CLOSE_Interface

   INTERFACE

      SUBROUTINE FILE_CLOSE ( UNIT, FILNAM, CLOSE_STAT, WRITE_F04 )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, F04, SC1
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  STIME, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  FILE_OPEN_BEGEND

      IMPLICIT NONE
 
      CHARACTER(FILE_NAM_MAXLEN*BYTE), INTENT(IN) :: FILNAM            ! File name

      CHARACTER(LEN=*)   , INTENT(IN) :: CLOSE_STAT        ! Status for close
      CHARACTER(LEN=*)   , INTENT(IN) :: WRITE_F04         ! If 'Y' write to F04, otherwise do not

      INTEGER(LONG), INTENT(IN)       :: UNIT              ! File unit number
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FILE_OPEN_BEGEND

      END SUBROUTINE FILE_CLOSE

   END INTERFACE

   END MODULE FILE_CLOSE_Interface

