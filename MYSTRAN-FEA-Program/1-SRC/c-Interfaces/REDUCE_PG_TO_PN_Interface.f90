! ##################################################################################################################################

   MODULE REDUCE_PG_TO_PN_Interface

   INTERFACE

      SUBROUTINE REDUCE_PG_TO_PN ( PART_VEC_G_NM, PART_VEC_SUB )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG, NDOFN, NDOFM, NSUB, NTERM_GMN, NTERM_PG, NTERM_PN, NTERM_PM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_PG_TO_PN_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE PARAMS, ONLY                :  EPSIL, MATSPARS
      USE SPARSE_MATRICES, ONLY       :  I_PG, J_PG, PG, I_PN, J_PN, PN, I_PM, J_PM, PM, I_GMN, J_GMN, GMN, I_GMNt, J_GMNt, GMNt 
      USE SPARSE_MATRICES, ONLY       :  SYM_GMN, SYM_PG, SYM_PN, SYM_PM
      USE FULL_MATRICES, ONLY         :  PN_FULL, PM_FULL, GMN_FULL, DUM1, DUM2
      USE SCRATCH_MATRICES
 
      IMPLICIT NONE
               
      INTEGER(LONG), INTENT(IN)       :: PART_VEC_G_NM(NDOFG)! Partitioning vector (G set into N and M sets) 
      INTEGER(LONG), INTENT(IN)       :: PART_VEC_SUB(NSUB)  ! Partitioning vector (1's for all subcases) 
      INTEGER(LONG), PARAMETER        :: ITRNSPB     = 0     ! Transpose indicator for matrix multiply routine
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_PG_TO_PN_BEGEND

      REAL(DOUBLE)                    :: SMALL               ! A number used in filtering out small numbers from a full matrix
 
      END SUBROUTINE REDUCE_PG_TO_PN

   END INTERFACE

   END MODULE REDUCE_PG_TO_PN_Interface

