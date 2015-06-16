! ##################################################################################################################################

   MODULE WRITE_PLY_STRESSES_Interface

   INTERFACE

      SUBROUTINE WRITE_PLY_STRESSES ( JSUB, NUM, IHDR )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ANS, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, BARTOR, INT_SC_NUM, LPCOMP_PLIES, NDOFR, NUM_CB_DOFS,            &
                                         SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_PLY_STRESSES_BEGEND
      USE LINK9_STUFF, ONLY           :  EID_OUT_ARRAY, FTNAME, OGEL
      USE MODEL_STUF, ONLY            :  ANY_FAILURE_THEORY, ELEM_ONAME, LABEL, PCOMP, SCNUM, STITLE, TITLE
      USE CC_OUTPUT_DESCRIBERS, ONLY  :  STRE_OPT
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM  
  
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: IHDR              ! Indicator of whether to write an output header
  
      INTEGER(LONG), INTENT(IN)       :: JSUB              ! Solution vector number
      INTEGER(LONG), INTENT(IN)       :: NUM               ! The number of rows of OGEL to write out
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_PLY_STRESSES_BEGEND
  
      END SUBROUTINE WRITE_PLY_STRESSES

   END INTERFACE

   END MODULE WRITE_PLY_STRESSES_Interface

