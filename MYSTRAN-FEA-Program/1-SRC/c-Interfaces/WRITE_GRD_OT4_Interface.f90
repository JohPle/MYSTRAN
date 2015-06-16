! ##################################################################################################################################

   MODULE WRITE_GRD_OT4_Interface

   INTERFACE

      SUBROUTINE WRITE_GRD_OT4 ( MAT_NAME, NROWS_MAT, NROWS_TXT, NCOLS, TXT, UNT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  F04, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_GRD_OT4_BEGEND
 
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: NROWS_TXT         ! Number of rows in TXT

      CHARACTER(LEN=*), INTENT(IN)    :: MAT_NAME          ! Matrix name of the OTM that MAT describes
      CHARACTER(LEN=*), INTENT(IN)    :: TXT(NROWS_TXT)    ! Lines of this array describe the rows of CB OTM of MAT_NAME

      INTEGER(LONG), INTENT(IN)       :: NCOLS             ! Number of cols in MAT
      INTEGER(LONG), INTENT(IN)       :: NROWS_MAT         ! Number of rows in MAT
      INTEGER(LONG), INTENT(IN)       :: UNT               ! Unit number where to write matrix
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_GRD_OT4_BEGEND
 
      END SUBROUTINE WRITE_GRD_OT4

   END INTERFACE

   END MODULE WRITE_GRD_OT4_Interface

