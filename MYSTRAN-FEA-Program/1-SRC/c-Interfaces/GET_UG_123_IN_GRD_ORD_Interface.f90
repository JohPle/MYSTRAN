! ##################################################################################################################################

   MODULE GET_UG_123_IN_GRD_ORD_Interface

   INTERFACE

      SUBROUTINE GET_UG_123_IN_GRD_ORD ( IERR )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFG, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  GRID_ID
      USE DOF_TABLES, ONLY            :  TDOFI 
      USE COL_VECS, ONLY              :  UG_COL
      USE MISC_MATRICES, ONLY         :  UG_T123_MAT
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_UG_123_IN_GRD_ORD_BEGEND

      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = GET_UG_123_IN_GRD_ORD_BEGEND
      INTEGER(LONG), INTENT(OUT)      :: IERR              ! Local error indicator
 
      END SUBROUTINE GET_UG_123_IN_GRD_ORD

   END INTERFACE

   END MODULE GET_UG_123_IN_GRD_ORD_Interface

