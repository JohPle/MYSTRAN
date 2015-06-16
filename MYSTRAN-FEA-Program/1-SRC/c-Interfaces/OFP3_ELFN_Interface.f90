! ##################################################################################################################################

   MODULE OFP3_ELFN_Interface

   INTERFACE

      SUBROUTINE OFP3_ELFN ( JVEC, FEMAP_SET_ID, ITE, OT4_EROW )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_FIJ, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELOUT_ELFN_BIT, ELDT_BUG_U_P_BIT, ELDT_F25_U_P_BIT, FATAL_ERR,NELE, IBIT,   &
                                         INT_SC_NUM, JTSUB, JTSUB_OLD, SOL_NAME                                           
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  OFP3_ELFN_BEGEND
      USE PARAMS, ONLY                :  ELFORCEN, OTMSKIP
      USE MODEL_STUF, ONLY            :  EDAT, EPNT, ETYPE, AGRID, EID, ELDT, ELGP, ELMTYP, ELOUT, METYPE, NUM_EMG_FATAL_ERRS,     &
                                         PEB, PEG, PEL, PLY_NUM, TYPE, SCNUM
      USE LINK9_STUFF, ONLY           :  GID_OUT_ARRAY, EID_OUT_ARRAY, MAXREQ, OGEL
      USE OUTPUT4_MATRICES, ONLY      :  OTM_ELFN, TXT_ELFN
  
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE), PARAMETER   :: IHDR      = 'Y'   ! An input to subr WRITE_GRID_OUTPUTS, called herein
 
      INTEGER(LONG), INTENT(IN)       :: FEMAP_SET_ID      ! Set ID for FEMAP output
      INTEGER(LONG), INTENT(IN)       :: ITE               ! Unit number for text files for OTM row descriptors 
      INTEGER(LONG), INTENT(IN)       :: JVEC              ! Solution vector number
      INTEGER(LONG), INTENT(INOUT)    :: OT4_EROW          ! Row number in OT4 file for elem related OTM descriptors
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OFP3_ELFN_BEGEND
 
      END SUBROUTINE OFP3_ELFN

   END INTERFACE

   END MODULE OFP3_ELFN_Interface

