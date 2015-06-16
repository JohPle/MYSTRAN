! ##################################################################################################################################

   MODULE RIGID_BODY_DISP_MAT_Interface

   INTERFACE

       SUBROUTINE RIGID_BODY_DISP_MAT ( GRD_COORDS, REF_COORDS, RB_DISP )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE SUBR_BEGEND_LEVELS, ONLY    :  RIGID_BODY_DISP_MAT_BEGEND

      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = RIGID_BODY_DISP_MAT_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: GRD_COORDS(3)     ! Coords of grid point for which the RB matrix is to be formulated
      REAL(DOUBLE) , INTENT(IN)       :: REF_COORDS(3)     ! Coords of reference grid (grid about which the RB disps occur)
      REAL(DOUBLE) , INTENT(OUT)      :: RB_DISP(6,6)      ! The set of 6 RB displ vectors for the 6 disp components for GRID_NUM

      END SUBROUTINE RIGID_BODY_DISP_MAT

   END INTERFACE

   END MODULE RIGID_BODY_DISP_MAT_Interface

