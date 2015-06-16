! ##################################################################################################################################

   MODULE PARTITION_VEC_Interface

   INTERFACE

      SUBROUTINE PARTITION_VEC ( NDOF_X, CSET_X, CSET_1, CSET_2, PART_VEC )

                              
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  PARTITION_VEC_BEGEND
      USE DOF_TABLES, ONLY            :  TDOFI
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN )   :: CSET_X            ! Char description of displ set (e.g. 'A ' or 'SG')
      CHARACTER(LEN=*), INTENT(IN )   :: CSET_1            ! Char description of displ set (e.g. 'A ' or 'SG')
      CHARACTER(LEN=*), INTENT(IN )   :: CSET_2            ! Char description of displ set (e.g. 'A ' or 'SG')

      INTEGER(LONG), INTENT(IN )      :: NDOF_X            ! No. DOF's in CSET_X displ set
      INTEGER(LONG), INTENT(OUT)      :: PART_VEC(NDOF_X)  ! The partitioning vector described above
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = PARTITION_VEC_BEGEND

      END SUBROUTINE PARTITION_VEC

   END INTERFACE

   END MODULE PARTITION_VEC_Interface

