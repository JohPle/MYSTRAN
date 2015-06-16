! ##################################################################################################################################

   MODULE PROCESS_INCLUDE_FILES_Interface

   INTERFACE

      SUBROUTINE PROCESS_INCLUDE_FILES ( NUM_INCL_FILES )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, IN0, IN1, INC, INFILE, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  PROCESS_INCLUDE_FILES_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), INTENT(OUT)      :: NUM_INCL_FILES    ! Number of INCLUDE files in the Bulk Data file 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PROCESS_INCLUDE_FILES_BEGEND

      END SUBROUTINE PROCESS_INCLUDE_FILES

   END INTERFACE

   END MODULE PROCESS_INCLUDE_FILES_Interface

