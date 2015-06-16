! ##################################################################################################################################

   MODULE INVERT_FF_MAT_Interface

   INTERFACE

      SUBROUTINE INVERT_FF_MAT ( CALLING_SUBR, MAT_A_NAME, A, NROWS, INFO )


      USE PENTIUM_II_KIND, ONLY       :  DOUBLE, LONG
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  INVERT_FF_MAT_BEGEND
      USE LAPACK_SYM_MAT_INV

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN )   :: CALLING_SUBR      ! Name of subr that called this subr
      CHARACTER(LEN=*), INTENT(IN )   :: MAT_A_NAME        ! Name of input matrix to be inverted

      INTEGER(LONG)   , INTENT(IN)    :: NROWS             ! Row/col size of input matrix A
      INTEGER(LONG)   , INTENT(OUT)   :: INFO              ! Output from LAPACK routines to do factorization of Lapack band matrix
      INTEGER(LONG)   , PARAMETER     :: SUBR_BEGEND = INVERT_FF_MAT_BEGEND

      REAL(DOUBLE)    , INTENT(INOUT) :: A(NROWS,NROWS)    ! Matrix to invert. Inverted matrix returned in A

      END SUBROUTINE INVERT_FF_MAT

   END INTERFACE

   END MODULE INVERT_FF_MAT_Interface

