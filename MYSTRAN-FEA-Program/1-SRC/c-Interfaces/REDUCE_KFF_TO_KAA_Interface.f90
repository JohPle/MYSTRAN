! ##################################################################################################################################

   MODULE REDUCE_KFF_TO_KAA_Interface

   INTERFACE

      SUBROUTINE REDUCE_KFF_TO_KAA ( HANDLE, PART_VEC_F_AO )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L2E, LINK2E, L2E_MSG, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KOO_SDIA, NDOFF, NDOFA, NDOFO, NTERM_KFF,       &
                                         NTERM_KAA, NTERM_KAO, NTERM_KOO, NTERM_KOOs, NTERM_GOA
      USE PARAMS, ONLY                :  EPSIL, KOORAT, MATSPARS, MKLFAC31, MKLSTATS, SOLLIB, SPARSTOR, RCONDK
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_KFF_TO_KAA_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE FULL_MATRICES, ONLY         :  KAA_FULL, KAO_FULL, GOA_FULL, DUM1, DUM2
      USE SPARSE_MATRICES, ONLY       :  I_KFF, J_KFF, KFF, I_KAA, J_KAA, KAA, I_KAO, J_KAO, KAO, I_GOA, J_GOA, GOA,               &
                                         I_KOO, I2_KOO, J_KOO, KOO, I_KOOs, I2_KOOs, J_KOOs, KOOs
                                         
      USE SPARSE_MATRICES, ONLY       :  SYM_GOA, SYM_KFF, SYM_KAA, SYM_KAO, SYM_KOO
      USE SCRATCH_MATRICES
      USE MKL_DSS
 
      TYPE(MKL_DSS_HANDLE),INTENT(OUT):: HANDLE

      INTEGER(LONG), INTENT(IN)       :: PART_VEC_F_AO(NDOFF)! Partitioning vector (F set into A and O sets) 

      INTEGER(LONG), PARAMETER        :: ITRNSPB     = 0     ! Transpose indicator for matrix multiply routine

      INTEGER(LONG)                   :: JSTART              ! Used in deciding whether to process all stiffness terms or only
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_KFF_TO_KAA_BEGEND

      REAL(DOUBLE)                    :: SMALL             ! A number used in filtering out small numbers from a full matrix
 
      END SUBROUTINE REDUCE_KFF_TO_KAA

   END INTERFACE

   END MODULE REDUCE_KFF_TO_KAA_Interface

