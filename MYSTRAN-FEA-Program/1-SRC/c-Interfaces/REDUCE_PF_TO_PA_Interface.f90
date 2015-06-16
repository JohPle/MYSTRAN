! ##################################################################################################################################

   MODULE REDUCE_PF_TO_PA_Interface

   INTERFACE

      SUBROUTINE REDUCE_PF_TO_PA ( PART_VEC_F_AO, PART_VEC_SUB )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, KOO_SDIA, NDOFF, NDOFA, NDOFO, NSUB, NTERM_GOA, NTERM_PF,        &
                                         NTERM_PA, NTERM_PO
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_PF_TO_PA_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE PARAMS, ONLY                :  EPSIL, MATSPARS
      USE SPARSE_MATRICES, ONLY       :  I_PF, J_PF, PF, I_PA, J_PA, PA, I_PO, J_PO, PO, I_GOA, J_GOA, GOA, I_GOAt, J_GOAt, GOAt 
      USE SPARSE_MATRICES, ONLY       :  SYM_GOA, SYM_PF, SYM_PA, SYM_PO
      USE FULL_MATRICES, ONLY         :  PA_FULL, PO_FULL, GOA_FULL, DUM1, DUM2
      USE SCRATCH_MATRICES
 
      IMPLICIT NONE
               
      INTEGER(LONG), INTENT(IN)        :: PART_VEC_F_AO(NDOFF)! Partitioning vector (F set into A and O sets) 
      INTEGER(LONG), INTENT(IN)        :: PART_VEC_SUB(NSUB)  ! Partitioning vector (1's for all subcases) 
      INTEGER(LONG), PARAMETER         :: ITRNSPB     = 0     ! Transpose indicator for matrix multiply routine
      INTEGER(LONG), PARAMETER         :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER         :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER         :: SUBR_BEGEND = REDUCE_PF_TO_PA_BEGEND

      REAL(DOUBLE)                     :: SMALL               ! A number used in filtering out small numbers from a full matrix
 
      END SUBROUTINE REDUCE_PF_TO_PA

   END INTERFACE

   END MODULE REDUCE_PF_TO_PA_Interface

