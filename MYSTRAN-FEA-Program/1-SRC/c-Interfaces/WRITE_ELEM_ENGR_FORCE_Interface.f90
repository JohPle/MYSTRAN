! ##################################################################################################################################

   MODULE WRITE_ELEM_ENGR_FORCE_Interface

   INTERFACE

      SUBROUTINE WRITE_ELEM_ENGR_FORCE ( JSUB, NUM, IHDR )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ANS, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, INT_SC_NUM, NDOFR, NUM_CB_DOFS, NVEC, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE LINK9_STUFF, ONLY           :  EID_OUT_ARRAY, OGEL
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_ELEM_ENGR_FORCE_BEGEND
      USE MODEL_STUF, ONLY            :  ELEM_ONAME, LABEL, SCNUM, STITLE, TITLE, TYPE
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: IHDR              ! Indicator of whether to write an output header
  
      INTEGER(LONG), INTENT(IN)       :: JSUB              ! Solution vector number
      INTEGER(LONG), INTENT(IN)       :: NUM               ! The number of rows of OGEL to write out
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_ELEM_ENGR_FORCE_BEGEND
  
      END SUBROUTINE WRITE_ELEM_ENGR_FORCE

   END INTERFACE

   END MODULE WRITE_ELEM_ENGR_FORCE_Interface

