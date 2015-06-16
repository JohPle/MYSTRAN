! ##################################################################################################################################

   MODULE READ_INCLUDE_FILNAM_Interface

   INTERFACE

      SUBROUTINE READ_INCLUDE_FILNAM ( CARD, IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, FILE_NAM_MAXLEN, INC, INCFIL
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, EC_ENTRY_LEN, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_INCLUDE_FILNAM_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=EC_ENTRY_LEN), INTENT(IN)  :: CARD     ! An entry from an input data (DAT) file

      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Local error count
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_INCLUDE_FILNAM_BEGEND

      END SUBROUTINE READ_INCLUDE_FILNAM

   END INTERFACE

   END MODULE READ_INCLUDE_FILNAM_Interface

