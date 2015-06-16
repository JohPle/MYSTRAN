! ##################################################################################################################################

   MODULE WRITE_ELEM_NODE_FORCE_Interface

   INTERFACE

      SUBROUTINE WRITE_ELEM_NODE_FORCE ( JSUB, NUM_ELGP, NUM, IHDR )

  
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ANS, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, INT_SC_NUM, NDOFR, NUM_CB_DOFS, MOGEL, NVEC, SOL_NAME
      USE PARAMS, ONLY                :  ELFORCEN
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_ELEM_NODE_FORCE_BEGEND
      USE LINK9_STUFF, ONLY           :  GID_OUT_ARRAY, EID_OUT_ARRAY, MAXREQ, OGEL
      USE MODEL_STUF, ONLY            :  ELEM_ONAME, LABEL, SCNUM, STITLE, TITLE
      USE MACHINE_PARAMS, ONLY        :  MACH_LARGE_NUM  
  
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: IHDR              ! Indicator of whether to write output header
  
      INTEGER(LONG), INTENT(IN)       :: JSUB              ! Solution vector number
      INTEGER(LONG), INTENT(IN)       :: NUM               ! The number of rows of OGEL to write out
      INTEGER(LONG), INTENT(IN)       :: NUM_ELGP          ! The number of grid points for the elem being processed
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_ELEM_NODE_FORCE_BEGEND
  
      END SUBROUTINE WRITE_ELEM_NODE_FORCE

   END INTERFACE

   END MODULE WRITE_ELEM_NODE_FORCE_Interface

