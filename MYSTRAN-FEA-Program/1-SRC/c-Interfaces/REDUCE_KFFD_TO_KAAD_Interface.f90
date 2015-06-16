! ##################################################################################################################################

   MODULE REDUCE_KFFD_TO_KAAD_Interface

   INTERFACE

      SUBROUTINE REDUCE_KFFD_TO_KAAD ( HANDLE, PART_VEC_F_AO )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L2E, LINK2E, L2E_MSG, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, NDOFF, NDOFA, NDOFO, NTERM_KFFD, NTERM_KAAD,    &
                                         NTERM_KAOD, NTERM_KOOD, NTERM_KOODs, NTERM_GOA
      USE PARAMS, ONLY                :  EPSIL, KOORAT, MKLFAC31, SOLLIB, SPARSTOR, RCONDK
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_KFFD_TO_KAAD_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE SPARSE_MATRICES, ONLY       :  I_KFFD, J_KFFD, KFFD, I_KAAD, J_KAAD, KAAD, I_KAOD, J_KAOD, KAOD, I_GOA, J_GOA, GOA,      &
                                         I_KOOD, I2_KOOD, J_KOOD, KOOD, I_KOODs, I2_KOODs, J_KOODs, KOODs
                                         
      USE SPARSE_MATRICES, ONLY       :  SYM_GOA, SYM_KFFD, SYM_KAAD, SYM_KAOD, SYM_KOOD
      USE SCRATCH_MATRICES
      USE MKL_DSS
 
      TYPE(MKL_DSS_HANDLE),INTENT(OUT):: HANDLE

      INTEGER(LONG), INTENT(IN)       :: PART_VEC_F_AO(NDOFF)! Partitioning vector (F set into A and O sets) 

      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_KFFD_TO_KAAD_BEGEND

      END SUBROUTINE REDUCE_KFFD_TO_KAAD

   END INTERFACE

   END MODULE REDUCE_KFFD_TO_KAAD_Interface

