! ##################################################################################################################################

   MODULE READ_INPUT_FILE_NAME_Interface

   INTERFACE

      SUBROUTINE READ_INPUT_FILE_NAME ( INI_EXIST )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, DEFDIR, DEF_INFILE_EXT, INFILE,               &
                                         LEN_INPUT_FNAME, SC1
      USE SCONTR, ONLY                :  PROG_NAME

      IMPLICIT NONE

      CHARACTER( 1*BYTE), INTENT(IN)  :: INI_EXIST         ! 'Y' if file MYSTRAN.INI exists or 'N' otherwise

      END SUBROUTINE READ_INPUT_FILE_NAME

   END INTERFACE

   END MODULE READ_INPUT_FILE_NAME_Interface

