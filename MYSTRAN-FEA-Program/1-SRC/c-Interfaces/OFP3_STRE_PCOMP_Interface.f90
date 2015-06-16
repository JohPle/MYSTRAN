! ##################################################################################################################################

   MODULE OFP3_STRE_PCOMP_Interface

   INTERFACE

      SUBROUTINE OFP3_STRE_PCOMP ( JVEC, FEMAP_SET_ID, ITE, OT4_EROW )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELOUT_STRE_BIT, FATAL_ERR, IBIT, INT_SC_NUM, JTSUB, JTSUB_OLD, MBUG, MOGEL, &
                                         NELE, NCQUAD4, NCSHEAR,  NCTRIA3, SOL_NAME
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  OFP3_STRE_PCOMP_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_NUMS
      USE PARAMS, ONLY                :  OTMSKIP, POST
      USE MODEL_STUF, ONLY            :  ANY_STRE_OUTPUT, EDAT, EPNT, ETYPE, EID, ELMTYP, ELOUT, METYPE, NUM_EMG_FATAL_ERRS,       &
                                         NUM_PLIES, PCOMP_PROPS, PLY_NUM, THETA_PLY, TYPE
      USE LINK9_STUFF, ONLY           :  EID_OUT_ARRAY, MAXREQ, OGEL
      USE OUTPUT4_MATRICES, ONLY      :  OTM_STRE, TXT_STRE
  
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE), PARAMETER   :: IHDR      = 'Y'   ! An input to subr WRITE_GRID_OUTPUTS, called herein
 
      INTEGER(LONG), INTENT(IN)       :: FEMAP_SET_ID      ! Set ID for FEMAP output
      INTEGER(LONG), INTENT(IN)       :: ITE               ! Unit number for text files for OTM row descriptors 
      INTEGER(LONG), INTENT(IN)       :: JVEC              ! Solution vector number
      INTEGER(LONG), INTENT(INOUT)    :: OT4_EROW          ! Row number in OT4 file for elem related OTM descriptors
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OFP3_STRE_PCOMP_BEGEND
 
      END SUBROUTINE OFP3_STRE_PCOMP

   END INTERFACE

   END MODULE OFP3_STRE_PCOMP_Interface

