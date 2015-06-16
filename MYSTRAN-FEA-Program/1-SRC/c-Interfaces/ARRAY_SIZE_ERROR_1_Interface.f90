! ##################################################################################################################################

   MODULE ARRAY_SIZE_ERROR_1_Interface

   INTERFACE

      SUBROUTINE ARRAY_SIZE_ERROR_1 ( INP_SUBR_NAME, NTERM_VAL, MATIN_NAME ) 

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ARRAY_SIZE_ERROR_1_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: INP_SUBR_NAME     ! Subroutine in which the error was detected
      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME        ! Name of matrix (for output message purposes)

      INTEGER(LONG), INTENT(IN)       :: NTERM_VAL         ! Size of the array that was exceeded
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ARRAY_SIZE_ERROR_1_BEGEND

      END SUBROUTINE ARRAY_SIZE_ERROR_1

   END INTERFACE

   END MODULE ARRAY_SIZE_ERROR_1_Interface

