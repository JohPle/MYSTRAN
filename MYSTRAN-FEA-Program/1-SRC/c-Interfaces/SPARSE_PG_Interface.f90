! ##################################################################################################################################

   MODULE SPARSE_PG_Interface

   INTERFACE

      SUBROUTINE SPARSE_PG


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, L1E, L1E_MSG, L1ESTAT, LINK1E, SC1, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  FATAL_ERR, NDOFG, NSUB, NTERM_PG, BLNK_SUB_NAM, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SPARSE_PG_BEGEND
      USE PARAMS, ONLY                :  EPSIL, PRTFOR
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP, NL_NUM_LOAD_STEPS
      USE MODEL_STUF, ONLY            :  SYS_LOAD
      USE SPARSE_MATRICES, ONLY       :  I_PG, J_PG, PG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SPARSE_PG_BEGEND
 
      END SUBROUTINE SPARSE_PG

   END INTERFACE

   END MODULE SPARSE_PG_Interface

