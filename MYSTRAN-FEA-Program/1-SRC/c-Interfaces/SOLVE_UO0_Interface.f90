! ##################################################################################################################################

   MODULE SOLVE_UO0_Interface

   INTERFACE

      SUBROUTINE SOLVE_UO0


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L2F, LINK2F, L2F_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KOO_SDIA, LINKNO, NDOFO, NSUB, NTERM_PO
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE_UO0_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  BAILOUT, PRTUO0, SOLLIB
      USE SPARSE_MATRICES, ONLY       :  I_PO, J_PO, PO
      USE MKL_DSS
      USE COL_VECS, ONLY              :  UO0_COL
      USE LAPACK_LIN_EQN_DPB
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE_UO0_BEGEND

                                                           ! LAPACK_S values not used so null this vector

      END SUBROUTINE SOLVE_UO0

   END INTERFACE

   END MODULE SOLVE_UO0_Interface

