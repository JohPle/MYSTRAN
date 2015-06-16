! ##################################################################################################################################

   MODULE BUILD_F_AO_Interface

   INTERFACE

      SUBROUTINE BUILD_F_AO

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NDOFA, NDOFF, NDOFO, NTERM_GOA, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  BUILD_F_AO_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE
      USE PARAMS, ONLY                :  PRTDISP
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE SPARSE_MATRICES, ONLY       :  I_GOA, J_GOA, GOA, SYM_GOA
      USE COL_VECS, ONLY              :  UA_COL, UF_COL, UO_COL, UO0_COL
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: NUMCOLS     = 1   ! Variable for number of cols of an array
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = BUILD_F_AO_BEGEND
 
      END SUBROUTINE BUILD_F_AO

   END INTERFACE

   END MODULE BUILD_F_AO_Interface

