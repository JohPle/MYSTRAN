! ##################################################################################################################################

   MODULE SHELL_STRESS_OUTPUTS_Interface

   INTERFACE

      SUBROUTINE SHELL_STRESS_OUTPUTS ( SIZE_ALLOCATED, NUM1, NUM_FEMAP_ROWS, WRITE_OGEL, WRITE_FEMAP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SHELL_STRESS_OUTPUTS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  ANY_FAILURE_THEORY, FAILURE_THEORY, PCOMP_PROPS, STRAIN, STRESS, TYPE, ZS
      USE CC_OUTPUT_DESCRIBERS, ONLY  :  STRE_OPT
      USE LINK9_STUFF, ONLY           :  FTNAME, OGEL
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_VECS
      USE PARAMS, ONLY                :  POST
 
      IMPLICIT NONE

      CHARACTER( 1*BYTE), INTENT(IN)  :: WRITE_OGEL         ! If 'Y' then write data to array OGEL
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRITE_FEMAP        ! If 'Y' then write data to array FEMAP_EL_VECS
 
      INTEGER(LONG), INTENT(IN)       :: SIZE_ALLOCATED     ! No. of rows allocated to array that will be written to
      INTEGER(LONG), INTENT(IN)       :: NUM_FEMAP_ROWS     ! Number of rows that will be written to FEMAP arrays
      INTEGER(LONG), INTENT(INOUT)    :: NUM1               ! Cum rows written to OGEL prior to running this subr
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SHELL_STRESS_OUTPUTS_BEGEND
 
      END SUBROUTINE SHELL_STRESS_OUTPUTS

   END INTERFACE

   END MODULE SHELL_STRESS_OUTPUTS_Interface

