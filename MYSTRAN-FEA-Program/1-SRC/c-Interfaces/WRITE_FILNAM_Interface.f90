! ##################################################################################################################################

   MODULE WRITE_FILNAM_Interface

   INTERFACE

      SUBROUTINE WRITE_FILNAM ( FILNAM, UNT, BLEN )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, SC1
   
      IMPLICIT NONE
  
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! File name
  
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number of file FILNAM to write to
      INTEGER(LONG), INTENT(IN)       :: BLEN              ! Length, in char's, of blanks to print before filnam
   
      END SUBROUTINE WRITE_FILNAM

   END INTERFACE

   END MODULE WRITE_FILNAM_Interface

