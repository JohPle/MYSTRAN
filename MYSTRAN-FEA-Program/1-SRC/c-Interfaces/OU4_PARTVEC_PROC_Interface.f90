! ##################################################################################################################################

   MODULE OU4_PARTVEC_PROC_Interface

   INTERFACE

      SUBROUTINE OU4_PARTVEC_PROC ( INDEX, OU4_MAT_NAME, NROWS_F, NCOLS_F, ROW_SET, COL_SET, CAN_PARTN, NROWS_P, NCOLS_P,          &

                                    VAL_ROWS, VAL_COLS )
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06, L1V, L1V_MSG, LINK1V
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MTSET, NDOFG, NGRID, NUM_PARTVEC_RECORDS, WARN_ERR
      USE CONSTANTS_1, ONLY           :  ZERO, ONE, TWO
      USE TIMDAT, ONLY                :  TSEC
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE SUBR_BEGEND_LEVELS, ONLY    :  OU4_PARTVEC_PROC_BEGEND
      USE DOF_TABLES, ONLY            :  TSET_CHR_LEN, TDOF, TDOFI, TDOF_ROW_START
      USE OUTPUT4_MATRICES, ONLY      :  ACT_OU4_MYSTRAN_NAMES, OU4_PART_VEC_NAMES, OU4_PARTVEC_COL, OU4_PARTVEC_ROW,              &
                                         OU4_MAT_ROW_GRD_COMP, OU4_MAT_COL_GRD_COMP

      USE MODEL_STUF, ONLY            :  GRID, GRID_ID, INV_GRID_SEQ
      USE PARAMS, ONLY                :  PRTPSET, SUPINFO
 
      IMPLICIT NONE

      CHARACTER(LEN(ACT_OU4_MYSTRAN_NAMES)),INTENT(IN) :: OU4_MAT_NAME

      CHARACTER(LEN(TSET_CHR_LEN))         ,INTENT(IN) :: COL_SET

      CHARACTER(LEN(TSET_CHR_LEN))         ,INTENT(IN) :: ROW_SET

      CHARACTER( 1*BYTE)                   ,INTENT(OUT):: CAN_PARTN

      CHARACTER( 3*BYTE), PARAMETER                    :: COL_OR_ROW(2) = (/'COL', 'ROW'/)

      CHARACTER(LEN(TSET_CHR_LEN)), PARAMETER          :: PSET_CHAR(2)  = (/'CP', 'RP'/)

                                                            ! Tables, like TSET and USET but for partitioning vectors and only
      INTEGER(LONG), INTENT(IN)       :: INDEX              ! Index into array ACT_OU4_MYSTRAN_NAMES where OU4_MAT_NAME exists
      INTEGER(LONG), INTENT(IN)       :: NCOLS_F            ! Number of cols in the complete input OUTPUT4 matrix OU4_MAT_NAME
      INTEGER(LONG), INTENT(IN)       :: NROWS_F            ! Number of cols in the complete input OUTPUT4 matrix OU4_MAT_NAME
      INTEGER(LONG), INTENT(OUT)      :: NCOLS_P            ! Number of cols that will be in the OUTPUT4 matrix when partitioned
      INTEGER(LONG), INTENT(OUT)      :: NROWS_P            ! Number of cols that will be in the OUTPUT4 matrix when partitioned

      INTEGER(LONG), INTENT(OUT)      :: VAL_COLS           ! Number to enter into PARTVEC_COL for a col that is to be partitioned
      INTEGER(LONG), INTENT(OUT)      :: VAL_ROWS           ! Number to enter into PARTVEC_ROW for a row that is to be partitioned
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OU4_PARTVEC_PROC_BEGEND
 
      END SUBROUTINE OU4_PARTVEC_PROC

   END INTERFACE

   END MODULE OU4_PARTVEC_PROC_Interface

