! ##################################################################################################################################

   MODULE SUBCASE_PROC_Interface

   INTERFACE

      SUBROUTINE SUBCASE_PROC

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06, L1D

      USE SCONTR, ONLY                :  BLNK_SUB_NAM, CC_ENTRY_LEN, DATA_NAM_LEN, FATAL_ERR, IBIT, WARN_ERR, LSETLN,              &
                                         MELDTS, MELOUTS, METYPE, MGROUTS, NELE, NGRID, NSUB 

      USE SCONTR, ONLY                :  GROUT_ACCE_BIT, GROUT_DISP_BIT, GROUT_GPFO_BIT, GROUT_MPCF_BIT, GROUT_OLOA_BIT,           &
                                         GROUT_SPCF_BIT, ELOUT_ELFE_BIT, ELOUT_ELFN_BIT, ELOUT_STRE_BIT, ELOUT_STRN_BIT

      USE PARAMS, ONLY                :  PRTSCP, SUPWARN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  SUBCASE_PROC_BEGEND

      USE MODEL_STUF, ONLY            :  CCELDT, ONE_SET_ARRAY, SC_ACCE, SC_DISP, SC_ELFN, SC_ELFE, SC_GPFO, SC_MPCF,              &
                                         SC_OLOA, SC_SPCF, SC_STRE, SC_STRN, ELDT, OELDT, ELOUT, OELOUT, GROUT, OGROUT, LABEL,     &
                                         SCNUM, STITLE, TITLE, SUBLOD, GRID, GRID_ID, ESORT1, ETYPE
 
      USE MODEL_STUF, ONLY            :  ANY_ACCE_OUTPUT, ANY_DISP_OUTPUT, ANY_MPCF_OUTPUT, ANY_SPCF_OUTPUT, ANY_OLOA_OUTPUT,      &
                                         ANY_GPFO_OUTPUT, ANY_ELFE_OUTPUT, ANY_ELFN_OUTPUT, ANY_STRE_OUTPUT, ANY_STRN_OUTPUT
      IMPLICIT NONE
 
      CHARACTER(     1*BYTE)          :: PRNTOUT           ! Flag used in deciding what to output if B.D. PARAM PRTSCP = 1
      INTEGER(LONG)                   :: ELM_BIT(METYPE)   ! Array used for output warning purposes
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = SUBCASE_PROC_BEGEND
  
      END SUBROUTINE SUBCASE_PROC

   END INTERFACE

   END MODULE SUBCASE_PROC_Interface

