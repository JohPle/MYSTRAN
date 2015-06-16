! ##################################################################################################################################

   MODULE GET_OU4_MAT_STATS_Interface

   INTERFACE

      SUBROUTINE GET_OU4_MAT_STATS ( MAT, NROWS, NCOLS, FORM, SYM )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, NDOFG, NDOFL, NDOFR, NUM_CB_DOFS, NSUB, NVEC
      USE IOUNT1, ONLY                :  ERR, F06
      USE MODEL_STUF, ONLY            :  MCG
      USE PARAMS, ONLY                :  MPFOUT
      USE OUTPUT4_MATRICES

      IMPLICIT NONE

      CHARACTER(LEN=*) , INTENT(IN)   :: MAT               ! Name of matrix to get row, col size for
      CHARACTER(1*BYTE), INTENT(OUT)  :: SYM               ! Y if matrix stored symmetrically

      INTEGER(LONG)   , INTENT(OUT)   :: FORM              ! Matrix format
      INTEGER(LONG)   , INTENT(OUT)   :: NCOLS             ! Number of cols in MAT_NAME
      INTEGER(LONG)   , INTENT(OUT)   :: NROWS             ! Number of rows in MAT_NAME

      END SUBROUTINE GET_OU4_MAT_STATS

   END INTERFACE

   END MODULE GET_OU4_MAT_STATS_Interface

