! ##################################################################################################################################

   MODULE OFP3_ELFE_2D_Interface

   INTERFACE

      SUBROUTINE OFP3_ELFE_2D ( JVEC, FEMAP_SET_ID, ITE, OT4_EROW )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELOUT_ELFE_BIT, FATAL_ERR, IBIT, INT_SC_NUM, JTSUB, JTSUB_OLD, MBUG, MOGEL,&
                                         WARN_ERR, NELE, NCQUAD4, NCQUAD4K, NCSHEAR, NCTRIA3, NCTRIA3K, SOL_NAME                   
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  OFP3_ELFE_2D_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_NUMS, FEMAP_EL_VECS
      USE PARAMS, ONLY                :  OTMSKIP, POST
      use model_stuf, only            :  pcomp_props
      USE MODEL_STUF, ONLY            :  ANY_ELFE_OUTPUT, EDAT, EPNT, ETYPE, FCONV, EID, ELMTYP, ELOUT, METYPE, NUM_EMG_FATAL_ERRS,&
                                         PLY_NUM, TYPE, STRESS
      USE LINK9_STUFF, ONLY           :  EID_OUT_ARRAY, MAXREQ, OGEL
      USE OUTPUT4_MATRICES, ONLY      :  OTM_ELFE, TXT_ELFE
  
      IMPLICIT NONE
 
      CHARACTER( 1*BYTE), PARAMETER   :: IHDR      = 'Y'   ! An input to subr WRITE_GRID_OUTPUTS, called herein
 
      INTEGER(LONG), INTENT(IN)       :: FEMAP_SET_ID      ! Set ID for FEMAP output
      INTEGER(LONG), INTENT(IN)       :: ITE               ! Unit number for text files for OTM row descriptors 
      INTEGER(LONG), INTENT(IN)       :: JVEC              ! Solution vector number
      INTEGER(LONG), INTENT(INOUT)    :: OT4_EROW          ! Row number in OT4 file for elem related OTM descriptors
      integer(long)                   :: num_pcomp_elems   ! number of elements that are composites (used to prevent output of engr
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OFP3_ELFE_2D_BEGEND
 
      END SUBROUTINE OFP3_ELFE_2D

   END INTERFACE

   END MODULE OFP3_ELFE_2D_Interface

