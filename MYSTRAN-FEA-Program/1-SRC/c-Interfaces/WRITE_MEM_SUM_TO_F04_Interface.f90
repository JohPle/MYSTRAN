! ##################################################################################################################################

   MODULE WRITE_MEM_SUM_TO_F04_Interface

   INTERFACE

      SUBROUTINE WRITE_MEM_SUM_TO_F04 ( NAME, WHAT, MB_MEM, NROWS, NCOLS, SUBR_BEGEND )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  TOT_MB_MEM_ALLOC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: NAME              ! Array name that has MB_ALLOCATED mem allocated
      CHARACTER(LEN=*), INTENT(IN)    :: WHAT              ! Whether to write allocated or deallocated memory

      INTEGER(LONG)   , INTENT(IN)    :: NCOLS             ! Number of cols for matrix NAME
      INTEGER(LONG)   , INTENT(IN)    :: NROWS             ! Number of rows for matrix NAME
      INTEGER(LONG)   , INTENT(IN)    :: SUBR_BEGEND       ! SUBR_BEGEND value from calling subr

      REAL(DOUBLE)    , INTENT(IN)    :: MB_MEM            ! Megabytes of mmemory allocated to array NAME

      END SUBROUTINE WRITE_MEM_SUM_TO_F04

   END INTERFACE

   END MODULE WRITE_MEM_SUM_TO_F04_Interface

