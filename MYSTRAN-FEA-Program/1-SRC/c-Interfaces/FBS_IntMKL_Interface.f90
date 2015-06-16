! ##################################################################################################################################

   MODULE FBS_IntMKL_Interface

   INTERFACE

      SUBROUTINE FBS_IntMKL ( HANDLE, NROWS, RHS ) 


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE MKL_DSS
      USE SUBR_BEGEND_LEVELS, ONLY    :  FBS_IntMKL_BEGEND

      IMPLICIT NONE

      TYPE(MKL_DSS_HANDLE), INTENT(INOUT):: HANDLE

      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Dimension of RHS
      INTEGER(LONG), PARAMETER        :: NUM_RHS     = 1   ! Number of solution vectors to get
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FBS_IntMKL_BEGEND

      REAL(DOUBLE), INTENT(INOUT)     :: RHS(NROWS)        ! RHS

      END SUBROUTINE FBS_IntMKL

   END INTERFACE

   END MODULE FBS_IntMKL_Interface

