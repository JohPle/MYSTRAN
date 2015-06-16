! ##################################################################################################################################

   MODULE SOLVE_GMN_Interface

   INTERFACE

      SUBROUTINE SOLVE_GMN ( PART_VEC_G_NM, PART_VEC_M )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SCR, L2A, LINK2A, L2A_MSG, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LINKNO, NDOFG, NDOFM, NTERM_RMG, NTERM_RMN, NTERM_RMM, NTERM_GMN
      USE PARAMS, ONLY                :  EPSIL, PRTRMG, PRTGMN, SUPINFO
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE CONSTANTS_1, ONLY           :  ONE
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE_GMN_BEGEND
      USE SPARSE_MATRICES, ONLY       :  I_RMG, J_RMG, RMG, I_RMN, J_RMN, RMN, I_RMM, J_RMM, RMM, I_GMN, J_GMN, GMN 
      USE SPARSE_MATRICES, ONLY       :  SYM_RMG, SYM_RMN, SYM_RMM
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
               
      INTEGER(LONG), INTENT(IN)       :: PART_VEC_G_NM(NDOFG)! Partitioning vector (G set into N and M sets) 
      INTEGER(LONG), INTENT(IN)       :: PART_VEC_M(NDOFM)   ! Partitioning vector (1's for all M set DOF's) 
      INTEGER(LONG), PARAMETER        :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE_GMN_BEGEND + 1

      END SUBROUTINE SOLVE_GMN

   END INTERFACE

   END MODULE SOLVE_GMN_Interface

