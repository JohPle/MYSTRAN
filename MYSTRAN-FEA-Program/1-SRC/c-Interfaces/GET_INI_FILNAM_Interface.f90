! ##################################################################################################################################

   MODULE GET_INI_FILNAM_Interface

   INTERFACE

      SUBROUTINE GET_INI_FILNAM  ( MYSTRAN_DIR, MYSTRAN_DIR_LEN, INIFIL_NAME_LEN )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, F04, INIFIL, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, PROG_NAME
      USE TIMDAT, ONLY                :  TSEC 

      IMPLICIT NONE
 
      CHARACTER(FILE_NAM_MAXLEN*BYTE), INTENT(IN):: MYSTRAN_DIR

      INTEGER(LONG), INTENT(IN)       :: MYSTRAN_DIR_LEN   ! Length of MYSTRAN_DIR (not including trailing blanks)
      INTEGER(LONG), INTENT(OUT)      :: INIFIL_NAME_LEN   ! Length of INI file name (incl path)
 
      END SUBROUTINE GET_INI_FILNAM

   END INTERFACE

   END MODULE GET_INI_FILNAM_Interface

