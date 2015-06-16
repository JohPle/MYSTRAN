! ##################################################################################################################################

   MODULE SOLVE_GOA_Interface

   INTERFACE

      SUBROUTINE SOLVE_GOA ( HANDLE )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  FILE_NAM_MAXLEN, WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, SCR
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FACTORED_MATRIX, FATAL_ERR, KOO_SDIA, NDOFA, NDOFO, NTERM_GOA, NTERM_KOO,   &
                                         NTERM_KAO
      USE PARAMS, ONLY                :  EPSIL, PRTGOA
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SOLVE_GOA_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, ONE
      USE PARAMS, ONLY                :  BAILOUT, SOLLIB
      USE SPARSE_MATRICES, ONLY       :  I2_GOA, I_GOA, J_GOA, GOA, I_KOO, J_KOO, KOO, I_KAO, J_KAO, KAO
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE LAPACK_LIN_EQN_DPB
      USE MKL_DSS

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT):: HANDLE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SOLVE_GOA_BEGEND

      END SUBROUTINE SOLVE_GOA

   END INTERFACE

   END MODULE SOLVE_GOA_Interface

