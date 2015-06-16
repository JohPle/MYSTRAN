! ##################################################################################################################################

   MODULE GET_MAX_MIN_ABS_STR_Interface

   INTERFACE

      SUBROUTINE GET_MAX_MIN_ABS_STR ( NUM_ROWS, NUM_COLS, SECOND_LINE, MAX_ANS, MIN_ANS, ABS_ANS )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM  
      USE LINK9_STUFF, ONLY           :  OGEL
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_MAX_MIN_ABS_STR_BEGEND

      CHARACTER(1*BYTE), INTENT(IN)   :: SECOND_LINE       ! If 'Y' then there are 2 lines of OGEL for each strain

      INTEGER(LONG) , INTENT(IN)      :: NUM_ROWS          ! Number of stress or strain rows in OGEL
      INTEGER(LONG) , INTENT(IN)      :: NUM_COLS          ! Number of MAX, MIN, ABS to calc (number of cols in OGEL)
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_MAX_MIN_ABS_STR_BEGEND

      REAL(DOUBLE) , INTENT(OUT)      :: ABS_ANS(NUM_COLS) ! Max ABS for all grids output for each of the 6 disp components
      REAL(DOUBLE) , INTENT(OUT)      :: MAX_ANS(NUM_COLS) ! Max for all grids output for each of the 6 disp components
      REAL(DOUBLE) , INTENT(OUT)      :: MIN_ANS(NUM_COLS) ! Min for all grids output for each of the 6 disp components

      END SUBROUTINE GET_MAX_MIN_ABS_STR

   END INTERFACE

   END MODULE GET_MAX_MIN_ABS_STR_Interface

