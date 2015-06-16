! ##################################################################################################################################

   MODULE CNT_NONZ_IN_FULL_MAT_Interface

   INTERFACE

      SUBROUTINE CNT_NONZ_IN_FULL_MAT ( MATIN_NAME, MATIN, NROWS, NCOLS, SYM, NTERM_NONZERO, SMALL )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  EPSIL, SUPINFO, TINY
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG 
      USE SUBR_BEGEND_LEVELS, ONLY    :  CNT_NONZ_IN_FULL_MAT_BEGEND

      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: MATIN_NAME        ! Name of the matrix
      CHARACTER(LEN=*), INTENT(IN)    :: SYM               ! See above ('ALL' or 'UTR')

      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols in the matrix
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in the matrix
      INTEGER(LONG), INTENT(OUT)      :: NTERM_NONZERO     ! Number of nonzero (or significant) values in the matrix
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CNT_NONZ_IN_FULL_MAT_BEGEND
 
      REAL(DOUBLE) , INTENT(IN)       :: MATIN(NROWS,NCOLS)! Input full matrix
      REAL(DOUBLE) , INTENT(OUT)      :: SMALL             ! Filter for small terms

      END SUBROUTINE CNT_NONZ_IN_FULL_MAT

   END INTERFACE

   END MODULE CNT_NONZ_IN_FULL_MAT_Interface

