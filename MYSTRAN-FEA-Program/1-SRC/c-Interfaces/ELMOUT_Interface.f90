! ##################################################################################################################################

   MODULE ELMOUT_Interface

   INTERFACE

      SUBROUTINE ELMOUT ( INT_ELEM_ID, WRT_WHAT_BUG, CASE_NUM, OPT )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_ERR, WRT_LOG, BUG, F04
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_DAT1_BIT, ELDT_BUG_DAT2_BIT, ELDT_BUG_MASS_BIT, ELDT_BUG_P_T_BIT,  &
                                         ELDT_BUG_SE_BIT, ELDT_BUG_KE_BIT, ELDT_BUG_U_P_BIT, MBUG, MDT, MELGP, METYPE,             &
                                         MEMATR, MEMATC, MEPROP, MPRESS, NSUB, NTSUB, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELMOUT_BEGEND
      USE CONSTANTS_1, ONLY           :  CONV_RAD_DEG, ZERO
      USE PARAMS, ONLY                :  CBMIN3, CBMIN4, ELFORCEN, QUADAXIS, QUAD4TYP
      USE NONLINEAR_PARAMS, ONLY      :  LOAD_ISTEP
      USE MODEL_STUF, ONLY            :  AGRID, BGRID, BE1, BE2, BE3, BENSUM, BMEANT, CAN_ELEM_TYPE_OFFSET, DOFPIN, DT, ELAS_COMP, &
                                         EID, EB, EM, ES, ET, ELEM_LEN_AB, ELDOF, ELMTYP, ELGP, EMAT, EPROP, FCONV, HBAR, KE, KED, &
                                         ME, MXWARP, NUM_PLIES, NUM_SEi, OFFDIS, OFFSET, PCOMP_PROPS, PEB, PEG, PEL, PHI_SQ,       &
                                         PPE, PRESS, PSI_HAT, PTE, QUAD_DELTA, QUAD_GAMMA, QUAD_THETA, SE1, SE2, SE3,              &
                                         SHELL_T, SHRSUM, STE1, STE2, STE3, THETAM, TE, TYPE, UEB, UEG, UEL, XEB, XEL, SCNUM,      &
                                         SUBLOD, ULT_STRE, ULT_STRN
      IMPLICIT NONE
 
      CHARACTER(LEN=*), INTENT(IN)    :: OPT(6)              ! Array of EMG option indicators explained above
      CHARACTER( 1*BYTE)              :: FOUND               ! Used in determining if we found something we were looking for
      CHARACTER(60*BYTE)              :: NAME1               ! Text used for output print purposes
      CHARACTER(21*BYTE)              :: NAME2               ! Text used for output print purposes
      CHARACTER(12*BYTE)              :: NAME3               ! Text used for output print purposes
  
      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID         ! Internal element ID for which
      INTEGER(LONG), INTENT(IN)       :: CASE_NUM            ! Can be subcase number (e.g. for UEL, PEL output)
      INTEGER(LONG), INTENT(IN)       :: WRT_WHAT_BUG(0:MBUG-1)! Indicator for output of elem data to BUG file
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELMOUT_BEGEND

      END SUBROUTINE ELMOUT

   END INTERFACE

   END MODULE ELMOUT_Interface

