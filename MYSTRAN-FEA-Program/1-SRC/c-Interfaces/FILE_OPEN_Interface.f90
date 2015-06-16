! ##################################################################################################################################

   MODULE FILE_OPEN_Interface

   INTERFACE

      SUBROUTINE FILE_OPEN (UNIT, FILNAM, OUNT, STATUS, MESSAG, RW_STIME, FORMAT, ACTION, POSITION, WRITE_L1A, WRITE_VER, WRITE_F04)


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, IN1, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, PROG_NAME, PROTECTED
      USE TIMDAT, ONLY                :  STIME, TSEC
      USE MYSTRAN_Version, ONLY       :  MYSTRAN_VER_NUM, MYSTRAN_VER_MONTH, MYSTRAN_VER_DAY, MYSTRAN_VER_YEAR, MYSTRAN_VER_AUTH,  &
                                         MYSTRAN_COMMENT
      USE SP_ENVIRON_VARS, ONLY       :  ALLOWABLE_PROTECTED_SOLNS
      USE SUBR_BEGEND_LEVELS, ONLY    :  FILE_OPEN_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: ACTION            ! File description
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
      CHARACTER(LEN=*), INTENT(IN)    :: FORMAT            ! File format
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description
      CHARACTER(LEN=*), INTENT(IN)    :: POSITION          ! File description 
      CHARACTER(LEN=*), INTENT(IN)    :: STATUS            ! File status indicator (NEW, OLD, REPLACE)
      CHARACTER(LEN=*), INTENT(IN)    :: RW_STIME          ! Indicator of whether to read or write STIME
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_F04         ! If 'Y' write subr begin/end times to F04 (if WRT_LOG >= SUBR_BEGEND)
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_L1A         ! 'Y'/'N' Arg passed to subr OUTA_HERE
      CHARACTER(LEN=*), INTENT(IN)    :: WRITE_VER         ! 'Y'/'N' Arg to tell whether to write MYSTRAN version info
 
      INTEGER(LONG), INTENT(IN)       :: UNIT              ! Unit number file is attached to
      INTEGER(LONG), INTENT(IN)       :: OUNT(2)           ! File units to write messages to. Input to subr FILE_OPEN  
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FILE_OPEN_BEGEND

      END SUBROUTINE FILE_OPEN

   END INTERFACE

   END MODULE FILE_OPEN_Interface

