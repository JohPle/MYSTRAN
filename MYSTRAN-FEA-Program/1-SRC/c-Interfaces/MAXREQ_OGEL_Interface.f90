! ##################################################################################################################################

   MODULE MAXREQ_OGEL_Interface

   INTERFACE

      SUBROUTINE MAXREQ_OGEL

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, IBIT, LSUB, NDOFG, NELE, NGRID, METYPE, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  MAXREQ_OGEL_BEGEND
      USE MODEL_STUF, ONLY            :  ELMTYP, ELOUT, ESORT2, ETYPE, GROUT, MEFFMASS_CALC, MPFACTOR_CALC, NELGP, NUM_PLIES,      &
                                         PCOMP_PROPS, SCNUM, TYPE
      USE CC_OUTPUT_DESCRIBERS, ONLY  :  STRN_LOC, STRE_LOC
      USE LINK9_STUFF, ONLY           :  MAXREQ
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = MAXREQ_OGEL_BEGEND
 
      END SUBROUTINE MAXREQ_OGEL

   END INTERFACE

   END MODULE MAXREQ_OGEL_Interface

