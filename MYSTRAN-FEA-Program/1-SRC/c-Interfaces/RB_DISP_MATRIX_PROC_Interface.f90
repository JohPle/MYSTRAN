! ##################################################################################################################################

   MODULE RB_DISP_MATRIX_PROC_Interface

   INTERFACE

      SUBROUTINE RB_DISP_MATRIX_PROC ( REF_PT_TXT, REF_PT )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NCORD, NGRID, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF, TDOFI, TDOF_ROW_START
      USE PARAMS, ONLY                :  EQCHK_REF_GRID, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  RB_DISP_MATRIX_PROC_BEGEND
      USE MODEL_STUF, ONLY            :  CORD, GRID, RGRID, GRID_ID, INV_GRID_SEQ, MODEL_XCG, MODEL_YCG, MODEL_ZCG 
      USE RIGID_BODY_DISP_MATS, ONLY  :  RBGLOBAL_GSET
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: REF_PT_TXT        ! Reference point used in calculating the 6 rigid body displ vectors

      INTEGER(LONG), INTENT(IN)       :: REF_PT            ! An actual grid ID (only used if REF_PT_TXT = 'GRID')

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RB_DISP_MATRIX_PROC_BEGEND + 1
 
      END SUBROUTINE RB_DISP_MATRIX_PROC

   END INTERFACE

   END MODULE RB_DISP_MATRIX_PROC_Interface

