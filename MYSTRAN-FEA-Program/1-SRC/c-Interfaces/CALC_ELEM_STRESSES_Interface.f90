! ##################################################################################################################################

   MODULE CALC_ELEM_STRESSES_Interface

   INTERFACE

      SUBROUTINE CALC_ELEM_STRESSES ( SIZE_ALLOCATED, NUM1, NUM_FEMAP_ROWS, WRITE_OGEL, WRITE_FEMAP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR 
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  TYPE
      USE SUBR_BEGEND_LEVELS, ONLY    :  CALC_ELEM_STRESSES_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
 
      IMPLICIT NONE

      CHARACTER( 1*BYTE), INTENT(IN)  :: WRITE_OGEL        ! If 'Y' then write data to array OGEL
      CHARACTER( 1*BYTE), INTENT(IN)  :: WRITE_FEMAP       ! If 'Y' then write data to array FEMAP arrays
 
      INTEGER(LONG), INTENT(IN)       :: SIZE_ALLOCATED    ! No. of rows allocated to array that will be written to in a subr
      INTEGER(LONG), INTENT(IN)       :: NUM_FEMAP_ROWS    ! Number of rows that will be written to FEMAP arrays
      INTEGER(LONG), INTENT(INOUT)    :: NUM1              ! Cum rows written to OGEL prior to running this subr
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CALC_ELEM_STRESSES_BEGEND
 
      END SUBROUTINE CALC_ELEM_STRESSES

   END INTERFACE

   END MODULE CALC_ELEM_STRESSES_Interface

