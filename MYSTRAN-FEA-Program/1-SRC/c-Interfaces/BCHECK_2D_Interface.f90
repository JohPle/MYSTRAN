! ##################################################################################################################################

   MODULE BCHECK_2D_Interface

   INTERFACE

      SUBROUTINE BCHECK_2D ( B, BTYPE, ID, NROWB, NCOLB, BW, NUM_GRIDS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  BUG, F04, WRT_BUG, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BCHECK_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, TWO
      USE MODEL_STUF, ONLY            :  TE, XEB, XEL
 
      IMPLICIT NONE
  
      CHARACTER(LEN=*), INTENT(IN)    :: BTYPE             ! Type of B matrix ('M' for membrane, 'B' for bending, 'S' for shear)
  
      INTEGER(LONG), INTENT(IN)       :: NROWB             ! Number of rows in the input B matrix
      INTEGER(LONG), INTENT(IN)       :: NCOLB             ! Number of cols in the input B matrix
      INTEGER(LONG), INTENT(IN)       :: NUM_GRIDS         ! Number of grids for the input B matrix
      INTEGER(LONG), INTENT(IN)       :: ID(NCOLB)         ! List of elem DOF's for each of the elem grids (e.g 3,4,5 for each of
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BCHECK_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: B(NROWB,NCOLB)    ! Strain-displ matrix
      REAL(DOUBLE) , INTENT(OUT)      :: BW(NROWB,14)      ! Output from subr BCHECK_2D (matrix of NROWB elem strains for various
      END SUBROUTINE BCHECK_2D

   END INTERFACE

   END MODULE BCHECK_2D_Interface

