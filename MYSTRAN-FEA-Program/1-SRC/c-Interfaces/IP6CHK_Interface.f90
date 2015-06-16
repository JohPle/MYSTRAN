! ##################################################################################################################################

   MODULE IP6CHK_Interface

   INTERFACE

      SUBROUTINE IP6CHK ( JCARDI, JCARDO, IP6TYP, TOTAL_NUM_DIGITS )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, JCARD_LEN, WARN_ERR
      USE TIMDAT, ONLY                :  TSEC
      USE PARAMS, ONLY                :  SUPWARN
      USE SUBR_BEGEND_LEVELS, ONLY    :  IP6CHK_BEGEND
 
      IMPLICIT NONE
 
      CHARACTER(LEN=JCARD_LEN), INTENT(IN):: JCARDI            ! Input 8 character field
      CHARACTER(8*BYTE), INTENT(OUT)      :: IP6TYP            ! Descriptor of JCARDI, see above
      CHARACTER(LEN(JCARDI)), INTENT(OUT) :: JCARDO            ! Output 8 character field, described above
 
      INTEGER(LONG), INTENT(OUT)          :: TOTAL_NUM_DIGITS  ! Total of NUM_DIGITS(I)
      INTEGER(LONG), PARAMETER            :: SUBR_BEGEND = IP6CHK_BEGEND
 
      END SUBROUTINE IP6CHK

   END INTERFACE

   END MODULE IP6CHK_Interface

