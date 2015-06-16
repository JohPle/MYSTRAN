! ##################################################################################################################################

   MODULE GET_ELEM_ONAME_Interface

   INTERFACE

      SUBROUTINE GET_ELEM_ONAME ( NAME )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, METYPE 
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  GET_ELEM_ONAME_BEGEND
      USE MODEL_STUF, ONLY            :  ELEM_ONAME, ELMTYP, TYPE
 
      IMPLICIT NONE

      CHARACTER(LEN=LEN(ELEM_ONAME)), INTENT(OUT) :: NAME              ! Name of an elem for output purposes in LINK9 WRTELi subr's

      INTEGER(LONG), PARAMETER                    :: SUBR_BEGEND = GET_ELEM_ONAME_BEGEND

      END SUBROUTINE GET_ELEM_ONAME

   END INTERFACE

   END MODULE GET_ELEM_ONAME_Interface

