! ##################################################################################################################################

   MODULE WRITE_GRID_OUTPUTS_Interface

   INTERFACE

      SUBROUTINE WRITE_GRID_OUTPUTS ( JSUB, NUM, WHAT, IHDR, ALL_SAME_CID, WRITE_OGEL )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ANS, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, INT_SC_NUM, MELGP, MOGEL, NDOFR, NVEC, NUM_CB_DOFS,              &
                                         SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_GRID_OUTPUTS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE LINK9_STUFF, ONLY           :  GID_OUT_ARRAY, MAXREQ, OGEL
      USE MODEL_STUF, ONLY            :  LABEL, SCNUM, SUBLOD, STITLE, TITLE
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM  
  
      IMPLICIT NONE
 
      CHARACTER(LEN=*) , INTENT(IN)   :: IHDR              ! Indicator of whether to write an output header in this use of this subr
      CHARACTER(LEN=*) , INTENT(IN)   :: WHAT              ! Indicator whether to process displ or force output requests
      CHARACTER(1*BYTE), INTENT(IN)   :: ALL_SAME_CID      ! Indicator of whether all grids, for the output set, have the same
      INTEGER(LONG), INTENT(IN)       :: JSUB              ! Solution vector number
      INTEGER(LONG), INTENT(IN)       :: NUM               ! The number of rows of OGEL to write out
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_GRID_OUTPUTS_BEGEND

      CHARACTER(1*BYTE), INTENT(IN)   :: WRITE_OGEL(NUM)   ! 'Y'/'N' as to whether to write OGEL for a grid (used to avoid writing
      END SUBROUTINE WRITE_GRID_OUTPUTS

   END INTERFACE

   END MODULE WRITE_GRID_OUTPUTS_Interface

