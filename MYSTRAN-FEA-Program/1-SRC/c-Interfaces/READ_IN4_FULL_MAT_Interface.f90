! ##################################################################################################################################

   MODULE READ_IN4_FULL_MAT_Interface

   INTERFACE

      SUBROUTINE READ_IN4_FULL_MAT ( ELEM_TYP, ELEM_ID, MAT_NAME_IN, NRI, NCI, UNT, FILNAM, MAT_FULL, IERRT, CALLING_SUBR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  NUM_EMG_FATAL_ERRS
      USE SUBR_BEGEND_LEVELS, ONLY    :  READ_IN4_FULL_MAT_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Name of subr that called this one
      CHARACTER(LEN=*), INTENT(IN)    :: ELEM_TYP          ! Elem type for which this subr was called
      CHARACTER(LEN=*), INTENT(IN)    :: FILNAM            ! Name of file data is to be read from
      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME_IN       ! Name of matrix to read from UNT

      INTEGER(LONG), INTENT(IN)       :: UNT               ! I/O unit number from which to read MAT 
      INTEGER(LONG), INTENT(IN)       :: ELEM_ID           ! ID of element for which this subr was called
      INTEGER(LONG), INTENT(IN)       :: NRI               ! Number of rows expected in MAT_FULL
      INTEGER(LONG), INTENT(IN)       :: NCI               ! Number of cols expected in MAT
      INTEGER(LONG), INTENT(OUT)      :: IERRT             ! IERR1+IERR2
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = READ_IN4_FULL_MAT_BEGEND

      REAL(DOUBLE), INTENT(OUT)       :: MAT_FULL(NRI,NCI) ! Array of terms in matrix MAT

      END SUBROUTINE READ_IN4_FULL_MAT

   END INTERFACE

   END MODULE READ_IN4_FULL_MAT_Interface

