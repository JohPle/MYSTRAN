! ##################################################################################################################################

   MODULE OFP3_Interface

   INTERFACE

      SUBROUTINE OFP3 ( JVEC, FEMAP_SET_ID, ITE, OT4_EROW )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_BUG, WRT_FIJ, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JTSUB, JTSUB_OLD, MBUG, MFIJ, MOGEL
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE MODEL_STUF, ONLY            :  ANY_ELFE_OUTPUT, ANY_ELFN_OUTPUT, ANY_STRE_OUTPUT, ANY_STRN_OUTPUT
      USE LINK9_STUFF, ONLY           :  MAXREQ, OGEL
      USE SUBR_BEGEND_LEVELS, ONLY    :  OFP3_BEGEND
  
      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: FEMAP_SET_ID      ! Set ID for FEMAP output
      INTEGER(LONG), INTENT(IN)       :: ITE               ! Unit number for text files for OTM row descriptors 
      INTEGER(LONG), INTENT(IN)       :: JVEC              ! Solution vector number
      INTEGER(LONG), INTENT(INOUT)    :: OT4_EROW          ! Row number in OT4 file for elem related OTM descriptors
      INTEGER(LONG), PARAMETER        :: MERROR = 6        ! Number of error indicators used
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = OFP3_BEGEND
 
      END SUBROUTINE OFP3

   END INTERFACE

   END MODULE OFP3_Interface

