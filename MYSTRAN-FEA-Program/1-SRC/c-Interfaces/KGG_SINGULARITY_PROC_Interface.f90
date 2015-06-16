! ##################################################################################################################################

   MODULE KGG_SINGULARITY_PROC_Interface

   INTERFACE

      SUBROUTINE KGG_SINGULARITY_PROC ( AGRID, KGRD, NUM_ASPC_BY_COMP )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, SPC
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFSA, NGRID, NUM_PCHD_SPC1
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  AUTOSPC, AUTOSPC_INFO, AUTOSPC_RAT, EPSIL, PCHSPC1, SPC1SID, SUPINFO
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  KGG_SINGULARITY_PROC_BEGEND
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START, TDOFI, TSET
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MODEL_STUF, ONLY            :  GRID_ID

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: AGRID              ! Actual grid ID for IGRID
      INTEGER(LONG), INTENT(INOUT)    :: NUM_ASPC_BY_COMP(6)! The number of DOF's AUTOSPC'd for each displ component
      INTEGER(LONG)                   :: EIGENVAL_NUM(6)    ! Array to hold the eigenvalue number used in finding a SINGLR_COMP
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = KGG_SINGULARITY_PROC_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: KGRD(6,6)          ! 6x6 diagonal stiffness matrix for grid point AGRID
      REAL(DOUBLE)                    :: FAC                ! Multipling factor used in an intermediate calc
      REAL(DOUBLE)                    :: EPS1               ! Small value used in comparison to determine a real zero

      END SUBROUTINE KGG_SINGULARITY_PROC

   END INTERFACE

   END MODULE KGG_SINGULARITY_PROC_Interface

