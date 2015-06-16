! ##################################################################################################################################

   MODULE TDOF_PROC_Interface

   INTERFACE

      SUBROUTINE TDOF_PROC ( TDOF_MSG )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, SC1
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LDOFG, MTDOF, NDOFA, NDOFF, NDOFG, NDOFL, NDOFM, NDOFN, NDOFO,   &
                                         NDOFR, NDOFS, NDOFSA, NDOFSB, NDOFSE, NDOFSG, NDOFSZ, NGRID, NUM_USET_U1, NUM_USET_U2,    &
                                         SOL_NAME, WARN_ERR
      USE PARAMS, ONLY                :  EIGESTL, PRTDOF
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  DOF_PROC_BEGEND
      USE DOF_TABLES, ONLY            :  TSET, TDOF, TDOFI, TDOF_ROW_START, USET
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
      USE MODEL_STUF, ONLY            :  EIG_N2, GRID, GRID_ID, GRID_SEQ, INV_GRID_SEQ
 
      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: TDOF_MSG          ! Message to be printed out regarding at what point in the run the TDOF,I
      INTEGER(LONG)                   :: I_USET_U1         ! Counter for USET U1
      INTEGER(LONG)                   :: I_USET_U2         ! Counter for USET U2
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DOF_PROC_BEGEND
 
      END SUBROUTINE TDOF_PROC

   END INTERFACE

   END MODULE TDOF_PROC_Interface

