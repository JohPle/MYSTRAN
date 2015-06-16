! ##################################################################################################################################

   MODULE SEQ_PROC_Interface

   INTERFACE

      SUBROUTINE SEQ_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR,     F04,     F06,     SEQ,     L1B
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, SEQFIL
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, SEQSTAT
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DATA_NAM_LEN, FATAL_ERR, NGRID, NSEQ, PROG_NAME, WARN_ERR
      USE PARAMS, ONLY                :  EPSIL, GRIDSEQ
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPINFO, SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  SEQ_PROC_BEGEND
      USE MODEL_STUF, ONLY            :  GRID_ID, GRID_SEQ, INV_GRID_SEQ, SEQ1, SEQ2
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SEQ_PROC_BEGEND
 
      END SUBROUTINE SEQ_PROC

   END INTERFACE

   END MODULE SEQ_PROC_Interface

