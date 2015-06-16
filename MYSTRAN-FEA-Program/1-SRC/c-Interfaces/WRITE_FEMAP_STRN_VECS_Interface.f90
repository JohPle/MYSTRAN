! ##################################################################################################################################

   MODULE WRITE_FEMAP_STRN_VECS_Interface

   INTERFACE

      SUBROUTINE WRITE_FEMAP_STRN_VECS ( ELEM_TYP, IS_PCOMP, NUM_FEMAP_ROWS, FEMAP_SET_ID )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, NEU
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE CC_OUTPUT_DESCRIBERS, ONLY  :  STRN_OPT
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_NUMS, FEMAP_EL_VECS
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_FEMAP_STRN_VECS_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: ELEM_TYP               ! Element type
      CHARACTER(LEN=*), INTENT(IN)    :: IS_PCOMP               ! 'Y'/'N' for whether elements are PCOMP

      INTEGER(LONG), INTENT(IN)       :: NUM_FEMAP_ROWS         ! Number of rows of FEMAP data to write
      INTEGER(LONG), INTENT(IN)       :: FEMAP_SET_ID           ! FEMAP set ID to write out

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_FEMAP_STRN_VECS_BEGEND

      END SUBROUTINE WRITE_FEMAP_STRN_VECS

   END INTERFACE

   END MODULE WRITE_FEMAP_STRN_VECS_Interface

