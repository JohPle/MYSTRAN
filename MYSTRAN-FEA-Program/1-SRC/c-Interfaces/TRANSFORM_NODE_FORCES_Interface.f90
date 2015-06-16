! ##################################################################################################################################

   MODULE TRANSFORM_NODE_FORCES_Interface

   INTERFACE

      SUBROUTINE TRANSFORM_NODE_FORCES ( COORD_SYS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MELGP, NCORD
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  TRANSFORM_NODE_FORCES_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  CAN_ELEM_TYPE_OFFSET, GRID, CORD, BGRID, ELDOF, ELGP, OFFDIS, OFFSET, PEB, PEG, PEL, TE,  &
                                         TYPE

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: COORD_SYS         ! 'B" for basic, 'G' for global
 
      INTEGER(LONG), PARAMETER        :: NCOLA     = 3     ! An input to subr MATMULT_FFF called herein
      INTEGER(LONG), PARAMETER        :: NCOLB     = 1     ! An input to subr MATMULT_FFF called herein
      INTEGER(LONG), PARAMETER        :: NROWA     = 3     ! An input to subr MATMULT_FFF called herein
      INTEGER(LONG), PARAMETER        :: NROW      = 3     ! An input to subr MATPUT, MATGET called herein
      INTEGER(LONG), PARAMETER        :: NCOL      = 1     ! An input to subr MATPUT, MATGET called herein
      INTEGER(LONG), PARAMETER        :: PCOL      = 1     ! An input to subr MATPUT, MATGET called herein 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = TRANSFORM_NODE_FORCES_BEGEND
 
      REAL(DOUBLE)                    :: THETAD,PHID       ! Returns from subr GEN_T0L (not used here)

      END SUBROUTINE TRANSFORM_NODE_FORCES

   END INTERFACE

   END MODULE TRANSFORM_NODE_FORCES_Interface

