! ##################################################################################################################################

   MODULE READ_CHK_Interface

   INTERFACE

      SUBROUTINE READ_CHK (IOCHK, FILNAM, MESSAG, REC_NO, OUNT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! File description. Used for error messaging
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
 
      INTEGER(LONG), INTENT(IN)       :: IOCHK             ! IOSTAT error number when opening/reading a file
      INTEGER(LONG), INTENT(IN)       :: OUNT(2)           ! File units to write messages to
      INTEGER(LONG), INTENT(IN)       :: REC_NO            ! Indicator of record number when error encountered reading file
 
      END SUBROUTINE READ_CHK

   END INTERFACE

   END MODULE READ_CHK_Interface

