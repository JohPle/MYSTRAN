! ##################################################################################################################################

   MODULE ELEM_TRANSFORM_LBG_Interface

   INTERFACE

      SUBROUTINE ELEM_TRANSFORM_LBG ( WHICH, ZE, QE )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MELDOF, NCORD, NGRID, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELEM_TRANSFORM_LBG_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE MODEL_STUF, ONLY            :  ELDOF, GRID, GRID_ID, CORD, AGRID, TE_IDENT, TYPE
      USE MODEL_STUF, ONLY            :  ELGP

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: WHICH             ! 'K' for stiffness, 'M' for mass or 'PTE' for thermal load matrix
 
      INTEGER(LONG), PARAMETER        :: NCOLA     = 3     ! An input to subr MATMULT_FFF/MATMULT_FFF_T, called herein
      INTEGER(LONG), PARAMETER        :: NROW_GET  = 3     ! An input to subr MATGET/MATPUT (no. rows to get/put)
      INTEGER(LONG), PARAMETER        :: NROWA     = 3     ! An input to subr MATMULT_FFF/MATMULT_FFF_T, called herein
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELEM_TRANSFORM_LBG_BEGEND
 
      REAL(DOUBLE) , INTENT(INOUT)    :: QE(MELDOF,NSUB)  ! PTE or PPE if WHICH = 'PTE' or 'PPE'
      REAL(DOUBLE) , INTENT(INOUT)    :: ZE(MELDOF,MELDOF) ! Either the mass or stiff matrix of the element
 
      END SUBROUTINE ELEM_TRANSFORM_LBG

   END INTERFACE

   END MODULE ELEM_TRANSFORM_LBG_Interface

