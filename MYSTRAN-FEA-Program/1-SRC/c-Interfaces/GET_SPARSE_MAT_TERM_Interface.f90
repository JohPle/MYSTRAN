! ##################################################################################################################################

   MODULE GET_SPARSE_MAT_TERM_Interface

   INTERFACE

      SUBROUTINE GET_SPARSE_MAT_TERM ( MATIN_NAME, I_MATIN, J_MATIN, MATIN, IROW, JCOL, N, NTERMS, MATIN_VAL )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO 
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_SPARSE_MAT_TERM_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN )   :: MATIN_NAME        ! Name of input matrix MATIN

      INTEGER(LONG), INTENT(IN)       :: N                 ! Row/col size of MATIN
      INTEGER(LONG), INTENT(IN)       :: NTERMS            ! Number of nonzero terms in sparse matrix MATIN
      INTEGER(LONG), INTENT(IN)       :: IROW              ! Row index of the term to retrieve from sparse MATIN
      INTEGER(LONG), INTENT(IN)       :: JCOL              ! Col index of the term to retrieve from sparse MATIN
      INTEGER(LONG), INTENT(IN)       :: I_MATIN(N+1)      ! Indices of the beginning terms in each row for MATIN values
      INTEGER(LONG), INTENT(IN)       :: J_MATIN(NTERMS)   ! Col numbers of nonzero term in MATIN
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_SPARSE_MAT_TERM_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: MATIN(NTERMS)     ! Real vals in sparse matrix MATIN
      REAL(DOUBLE) , INTENT(OUT)      :: MATIN_VAL

      END SUBROUTINE GET_SPARSE_MAT_TERM

   END INTERFACE

   END MODULE GET_SPARSE_MAT_TERM_Interface

