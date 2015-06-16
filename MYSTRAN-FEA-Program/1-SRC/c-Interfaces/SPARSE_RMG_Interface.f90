! ##################################################################################################################################

   MODULE SPARSE_RMG_Interface

   INTERFACE

      SUBROUTINE SPARSE_RMG

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06, L1J, LINK1J, L1J_MSG
      USE SCONTR, ONLY                :  NDOFM, NTERM_RMG, BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_RMG_BEGEND
      USE PARAMS, ONLY                :  EPSIL
      USE SPARSE_MATRICES, ONLY       :  I_RMG, J_RMG, RMG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_RMG_BEGEND
 
      END SUBROUTINE SPARSE_RMG

   END INTERFACE

   END MODULE SPARSE_RMG_Interface

