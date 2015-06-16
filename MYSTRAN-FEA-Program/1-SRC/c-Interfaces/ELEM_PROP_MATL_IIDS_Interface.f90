! ##################################################################################################################################

   MODULE ELEM_PROP_MATL_IIDS_Interface

   INTERFACE

      SUBROUTINE ELEM_PROP_MATL_IIDS

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, IN4FIL_NUM, NUM_IN4_FILES, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, DEDAT_Q4_SHELL_KEY, DEDAT_T3_SHELL_KEY, FATAL_ERR, MPCOMP0, MPCOMP_PLIES,   &
                                         NCMASS, NELE, NMATL, NPBAR, NPBEAM,                                                       &
                                         NPBUSH, NPCOMP, NPELAS, NPMASS, NPROD, npshear, NPSHEL, NPSOLID, NPUSER1, NPUSERIN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELEM_PROP_MATL_IIDS_BEGEND
      USE MODEL_STUF, ONLY            :  CMASS, ETYPE, EPNT, EDAT, PELAS, PROD, PBAR, PBEAM, PBUSH, PCOMP, PMASS, PSHEAR,          &
                                         PSHEL, PSOLID, PUSER1, PUSERIN, MATL
 
      IMPLICIT NONE

      CHARACTER( 1*BYTE)              :: FOUND             ! Used to indicate if a prop or mat'l ID was found 
      CHARACTER( 1*BYTE)              :: FOUND_PCOMP       ! Used to indicate if a PCOMP prop ID was found 
      CHARACTER( 1*BYTE)              :: FOUND_PSHEL       ! Used to indicate if a PSHELL prop ID was found 
      CHARACTER( 8*BYTE)              :: NAME = 'MATERIAL' ! Used for output error message
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELEM_PROP_MATL_IIDS_BEGEND
 
      END SUBROUTINE ELEM_PROP_MATL_IIDS

   END INTERFACE

   END MODULE ELEM_PROP_MATL_IIDS_Interface

