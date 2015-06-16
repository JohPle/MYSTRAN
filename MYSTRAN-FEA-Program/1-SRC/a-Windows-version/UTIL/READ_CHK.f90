! ##################################################################################################################################
 
      SUBROUTINE READ_CHK (IOCHK, FILNAM, MESSAG, REC_NO, OUNT )
 
! Checks status of a read and calls READERR and quits if it is not OK
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
 
      USE READ_CHK_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description. Used for error messaging
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
 
      INTEGER(LONG), INTENT(IN)       :: IOCHK             ! IOSTAT error number when opening/reading a file
      INTEGER(LONG), INTENT(IN)       :: OUNT(2)           ! File units to write messages to
      INTEGER(LONG), INTENT(IN)       :: REC_NO            ! Indicator of record number when error encountered reading file
 
! **********************************************************************************************************************************
      IF (IOCHK /= 0) THEN
         CALL READERR ( IOCHK, FILNAM, MESSAG, REC_NO, OUNT, 'Y' )
         CALL OUTA_HERE ( 'Y' )
      ENDIF

! **********************************************************************************************************************************
 
      END SUBROUTINE READ_CHK
