! ##################################################################################################################################

   MODULE SORT_REAL1_INT1_Interface

   INTERFACE

      SUBROUTINE SORT_REAL1_INT1 ( CALLING_SUBR, MESSAG, NSIZE, RARRAY, IARRAY )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE PARAMS, ONLY                :  SORT_MAX
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SORT_REAL1_INT1_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Subr that called this subr
      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Message to be written out if this subr fails to sort

      INTEGER(LONG), INTENT(IN)       :: NSIZE             ! No. rows in arrays IARRAY, RARRAY
      INTEGER(LONG), INTENT(INOUT)    :: IARRAY(NSIZE)     ! Integer array
      INTEGER(LONG)                   :: IDUM              ! Dummy values in IARRAY used when switching IARRAY rows during sort. 
      INTEGER(LONG)                   :: JCT               ! Shell sort parameter returned from subroutine SORTLEN.
      INTEGER(LONG)                   :: SORTPK            ! Intermediate variable used in setting a DO loop range.
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SORT_REAL1_INT1_BEGEND

      REAL(DOUBLE),  INTENT(INOUT)    :: RARRAY(NSIZE)     ! Array of real values 
      REAL(DOUBLE)                    :: RDUM              ! Dummy values in RARRAY used when switching RARRAY rows during sort.

      END SUBROUTINE SORT_REAL1_INT1

   END INTERFACE

   END MODULE SORT_REAL1_INT1_Interface

