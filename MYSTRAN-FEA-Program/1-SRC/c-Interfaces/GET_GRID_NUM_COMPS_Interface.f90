! ##################################################################################################################################

   MODULE GET_GRID_NUM_COMPS_Interface

   INTERFACE

      SUBROUTINE GET_GRID_NUM_COMPS ( GRID_NUM, NUM_COMPS, CALLING_SUBR )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  GRID
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_GRID_NUM_COMPS_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: CALLING_SUBR      ! Subr that called this one

      INTEGER(LONG), INTENT(IN)       :: GRID_NUM          ! A grid number (calling subr checked that it is an actual grid)
      INTEGER(LONG), INTENT(OUT)      :: NUM_COMPS         ! 6 if GRID_NUM is an physical grid, 1 if an SPOINT
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_GRID_NUM_COMPS_BEGEND

      END SUBROUTINE GET_GRID_NUM_COMPS

   END INTERFACE

   END MODULE GET_GRID_NUM_COMPS_Interface

