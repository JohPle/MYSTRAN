! ##################################################################################################################################

   MODULE WRITE_PARTNd_MAT_HDRS_Interface

   INTERFACE

      SUBROUTINE WRITE_PARTNd_MAT_HDRS ( MAT_NAME, ROW_SET, COL_SET, NROWS, NCOLS )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MTDOF, NDOFA, NDOFF, NDOFG, NDOFL, NDOFM, NDOFN, NDOFO, NDOFR,   &
                                         NDOFS, NDOFSA, NDOFSB, NDOFSE, NDOFSG, NDOFSZ, NUM_USET_U1, NUM_USET_U2, TSET_CHR_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOFI
      USE OUTPUT4_MATRICES, ONLY      :  OU4_MAT_COL_GRD_COMP, OU4_MAT_ROW_GRD_COMP
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_PARTNd_MAT_HDRS_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME            ! Name of the partitioned matrix whose row/col headings will be output
      CHARACTER(LEN=*), INTENT(IN)    :: COL_SET             ! Set name that the cols of MAT_NAME belong to (e.g. 'G ', 'l ', etc)
      CHARACTER(LEN=*), INTENT(IN)    :: ROW_SET             ! Set name that the rows of MAT_NAME belong to (e.g. 'G ', 'l ', etc)

      INTEGER(LONG), INTENT(IN)       :: NCOLS               ! Number of cols in the partitioned matrix MAT_NAME
      INTEGER(LONG), INTENT(IN)       :: NROWS               ! Number of rows in the partitioned matrix MAT_NAME
      INTEGER(LONG)                   :: GRID_NUM(NDOFG)     ! Array of grid numbers for members of a DOF set requested in USETSTR
      INTEGER(LONG)                   :: COMP_NUM(NDOFG)     ! Array of comp numbers for members of a DOF set requested in USETSTR
      INTEGER(LONG)                   :: NUM_LEFT            ! Used when printing a line of 10 values in the set
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_PARTNd_MAT_HDRS_BEGEND

      END SUBROUTINE WRITE_PARTNd_MAT_HDRS

   END INTERFACE

   END MODULE WRITE_PARTNd_MAT_HDRS_Interface

