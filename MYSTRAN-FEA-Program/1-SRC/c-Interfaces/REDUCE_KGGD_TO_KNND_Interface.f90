! ##################################################################################################################################

   MODULE REDUCE_KGGD_TO_KNND_Interface

   INTERFACE

      SUBROUTINE REDUCE_KGGD_TO_KNND ( PART_VEC_G_NM )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L2J, LINK2J, L2J_MSG, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG, NDOFN, NDOFM, NTERM_HMN, NTERM_KGGD, NTERM_KNND,          &
                                         NTERM_KNMD, NTERM_KMMD, NTERM_GMN
      USE PARAMS, ONLY                :  EPSIL, SPARSTOR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_KGGD_TO_KNND_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE SPARSE_MATRICES, ONLY       :  I_HMN, J_HMN, HMN, I_KGGD, J_KGGD, KGGD, I_KNND, J_KNND, KNND, I_KNMD, J_KNMD, KNMD,         &
                                         I_KMMD, J_KMMD, KMMD, I_KMND, J_KMND, KMND, I_GMN, J_GMN, GMN,  I_GMNt, J_GMNt, GMNt
      USE SPARSE_MATRICES, ONLY       :  SYM_GMN, SYM_HMN, SYM_KGGD, SYM_KNND, SYM_KNMD, SYM_KMMD, SYM_KMND
      USE SCRATCH_MATRICES

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: PART_VEC_G_NM(NDOFG)! Partitioning vector (G set into N and M sets) 
      INTEGER(LONG)                   :: JSTART              ! Used in deciding whether to process all stiffness terms or only
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = REDUCE_KGGD_TO_KNND_BEGEND

      END SUBROUTINE REDUCE_KGGD_TO_KNND

   END INTERFACE

   END MODULE REDUCE_KGGD_TO_KNND_Interface

