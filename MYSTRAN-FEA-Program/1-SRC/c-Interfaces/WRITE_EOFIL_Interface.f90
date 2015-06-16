! ##################################################################################################################################

   MODULE WRITE_EOFIL_Interface

   INTERFACE

      SUBROUTINE WRITE_EOFIL ( JVEC )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_FIJ, WRT_LOG, F04,                                                                    &
                                         F21, F22, F23, F24, F25, F21_MSG, F22_MSG, F23_MSG, F24_MSG, F25_MSG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MAX_STRESS_POINTS, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_EOFIL_BEGEND
      USE MODEL_STUF, ONLY            :  EID, TYPE, ELGP, ELDOF, KE, ME, PEB, PEG, PEL, PPE, PTE,                                  &
                                         SE1, SE2, SE3, STE1, STE2, STE3, UEB, UEG, UEL 
      USE PARAMS, ONLY                :  ELFORCEN

      IMPLICIT NONE
 
      INTEGER(LONG), INTENT(IN)       :: JVEC              ! Internal subcase or vector number for data to be written
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_EOFIL_BEGEND
 
      END SUBROUTINE WRITE_EOFIL

   END INTERFACE

   END MODULE WRITE_EOFIL_Interface

