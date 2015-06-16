! ##################################################################################################################################
 
      SUBROUTINE CLOSE_OUTFILES ( BUG_CLOSE_STAT, ERR_CLOSE_STAT, F04_CLOSE_STAT ) 
 
! Closes BUGFIL, ERRFIL, F04FIL, F06FIL
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE
      USE IOUNT1, ONLY                :  WRT_LOG, BUG   ,  ERR   ,  F04   ,  F06   ,  SC1
      USE IOUNT1, ONLY                :  BUGFIL,  ERRFIL,  F04FIL,  F06FIL

      USE CLOSE_OUTFILES_USE_IFs

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: BUG_CLOSE_STAT    ! Input value for close status for BUG
      CHARACTER(LEN=*), INTENT(IN)    :: ERR_CLOSE_STAT    ! Input value for close status for ERR
      CHARACTER(LEN=*), INTENT(IN)    :: F04_CLOSE_STAT    ! Input value for close status for F04

! **********************************************************************************************************************************
      IF (BUG /= SC1) THEN
         CALL FILE_CLOSE ( BUG, BUGFIL, BUG_CLOSE_STAT, 'Y' )
      ENDIF

      IF (ERR /= SC1) THEN
         CALL FILE_CLOSE ( ERR, ERRFIL, ERR_CLOSE_STAT, 'Y' )
      ENDIF

      IF (F06 /= SC1) THEN
         CALL FILE_CLOSE ( F06, F06FIL, 'KEEP', 'Y' )
      ENDIF

      IF (F04 /= SC1) THEN
         IF (WRT_LOG > 0) THEN
            CALL FILE_CLOSE ( F04, F04FIL, 'KEEP', 'Y' )
         ELSE
            CALL FILE_CLOSE ( F04, F04FIL, F04_CLOSE_STAT, 'Y' )
         ENDIF
      ENDIF

! **********************************************************************************************************************************

      END SUBROUTINE CLOSE_OUTFILES
