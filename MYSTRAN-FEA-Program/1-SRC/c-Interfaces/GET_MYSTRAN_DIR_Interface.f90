! ##################################################################################################################################

   MODULE GET_MYSTRAN_DIR_Interface

   INTERFACE

      SUBROUTINE GET_MYSTRAN_DIR ( MYSTRAN_DIR, MYSTRAN_DIR_LEN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN

      IMPLICIT NONE
 
      CHARACTER(FILE_NAM_MAXLEN*BYTE), INTENT(OUT) :: MYSTRAN_DIR       ! Directory where executable (and INI file) exist

      INTEGER(LONG), INTENT(OUT)                   :: MYSTRAN_DIR_LEN   ! Length of MYSTRAN_DIR (not including trailing blanks)
 
      END SUBROUTINE GET_MYSTRAN_DIR

   END INTERFACE

   END MODULE GET_MYSTRAN_DIR_Interface

