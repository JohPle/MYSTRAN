! ##################################################################################################################################

   MODULE GET_GRID_6X6_MASS_Interface

   INTERFACE

      SUBROUTINE GET_GRID_6X6_MASS ( AGRID, IGRID, FOUND, GRID_MGG )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NGRID, NTERM_MGG
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_GRID_6X6_MASS_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE DOF_TABLES, ONLY            :  TDOF
      USE SPARSE_MATRICES, ONLY       :  I2_MGG, J_MGG, MGG
 
      IMPLICIT NONE
  
      CHARACTER( 1*BYTE), INTENT(OUT) :: FOUND             ! 'Y' if there is a mass matrix for this grid and 'N' otherwise

      INTEGER(LONG), INTENT(IN)       :: AGRID             ! Actual grid number of grid for which we want the 6 x 6 mass matrix
      INTEGER(LONG), INTENT(IN)       :: IGRID             ! Internal grid number of grid for which we want the 6 x 6 mass matrix
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_GRID_6X6_MASS_BEGEND

      REAL(DOUBLE), INTENT(OUT)       :: GRID_MGG(6,6)     ! 6 x 6 mass matrix for internal grid IGRID

      END SUBROUTINE GET_GRID_6X6_MASS

   END INTERFACE

   END MODULE GET_GRID_6X6_MASS_Interface

