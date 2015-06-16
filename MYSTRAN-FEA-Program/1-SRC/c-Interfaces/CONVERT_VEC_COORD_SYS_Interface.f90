! ##################################################################################################################################

   MODULE CONVERT_VEC_COORD_SYS_Interface

   INTERFACE

      SUBROUTINE CONVERT_VEC_COORD_SYS ( MESSAG, INPUT_VEC, OUTPUT_VEC, NCID )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, NCORD, NDOFG, NGRID
      USE TIMDAT, ONLY                :  TSEC
      USE MODEL_STUF, ONLY            :  CORD, RCORD, GRID, GRID_ID, INV_GRID_SEQ
      USE SUBR_BEGEND_LEVELS, ONLY    :  CONVERT_VEC_COORD_SYS_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: MESSAG            ! Text description of INPUT_VEC in case of undefined NCID

      INTEGER(LONG), INTENT(IN)       :: NCID              ! Actual coord system number. INPUT_VEC is to be transformed to this sys.
      INTEGER(LONG)                   :: JFLD              ! Used in error message to indicate a coord sys ID undefined
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = CONVERT_VEC_COORD_SYS_BEGEND

      REAL(DOUBLE), INTENT(IN)        :: INPUT_VEC(NDOFG)  ! G-set input vector to be transformed from global to NCID
      REAL(DOUBLE), INTENT(OUT)       :: OUTPUT_VEC(NDOFG) ! Transformed output vector
      REAL(DOUBLE)                    :: PHID              ! Dummy arg for subr GEN_T0L that is not used here
      REAL(DOUBLE)                    :: THETAD            ! Dummy arg for subr GEN_T0L that is not used here

      END SUBROUTINE CONVERT_VEC_COORD_SYS

   END INTERFACE

   END MODULE CONVERT_VEC_COORD_SYS_Interface

