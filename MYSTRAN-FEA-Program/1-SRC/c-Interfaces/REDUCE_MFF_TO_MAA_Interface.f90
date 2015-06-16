! ##################################################################################################################################

   MODULE REDUCE_MFF_TO_MAA_Interface

   INTERFACE

      SUBROUTINE REDUCE_MFF_TO_MAA ( PART_VEC_F_AO )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFF, NDOFA, NDOFO, NTERM_MFF, NTERM_MAA, NTERM_MAO, NTERM_MOO, &
                                         NTERM_GOA
      USE PARAMS, ONLY                :  EPSIL, MATSPARS, SPARSTOR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_MFF_TO_MAA_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE SPARSE_MATRICES, ONLY       :  I_MFF, J_MFF, MFF, I_MAA, J_MAA, MAA, I_MAO, J_MAO, MAO, I_MOO, J_MOO, MOO,               &
                                         I_GOA, J_GOA, GOA,  I_GOAt, J_GOAt, GOAt
      USE SPARSE_MATRICES, ONLY       :  SYM_GOA, SYM_MFF, SYM_MAA, SYM_MAO, SYM_MOO
      USE FULL_MATRICES, ONLY         :  MAA_FULL, MAO_FULL, MOO_FULL, GOA_FULL, DUM1, DUM2, DUM3
      USE SCRATCH_MATRICES

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: PART_VEC_F_AO(NDOFF)! Partitioning vector (F set into A and O sets) 
      INTEGER(LONG)                   :: JSTART              ! Used in deciding whether to process all mass terms or only
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_MFF_TO_MAA_BEGEND

      REAL(DOUBLE)                    :: SMALL             ! A number used in filtering out small numbers from a full matrix
 
      END SUBROUTINE REDUCE_MFF_TO_MAA

   END INTERFACE

   END MODULE REDUCE_MFF_TO_MAA_Interface

