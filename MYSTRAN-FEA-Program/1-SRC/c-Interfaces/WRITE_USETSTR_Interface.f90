! ##################################################################################################################################

   MODULE WRITE_USETSTR_Interface

   INTERFACE

      SUBROUTINE WRITE_USETSTR


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MTDOF, NDOFA, NDOFF, NDOFG, NDOFL, NDOFM, NDOFN, NDOFO, NDOFR,   &
                                         NDOFS, NDOFSA, NDOFSB, NDOFSE, NDOFSG, NDOFSZ, NUM_USET_U1, NUM_USET_U2, TSET_CHR_LEN
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_USETSTR_BEGEND
      USE DOF_TABLES, ONLY            :  TDOFI, USETSTR_TABLE

      IMPLICIT NONE

      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'WRITE_USETSTR'
      CHARACTER( 1*BYTE)              :: USETSTR_OUTPUT      ! If 'Y' then output of USET tables is requested

      INTEGER(LONG)                   :: GRID_NUM(NDOFG)     ! Array of grid numbers for members of a DOF set requested in USETSTR
      INTEGER(LONG)                   :: COMP_NUM(NDOFG)     ! Array of comp numbers for members of a DOF set requested in USETSTR
      INTEGER(LONG)                   :: NUM_LEFT            ! Used when printing a line of 10 values in the set
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_USETSTR_BEGEND

      END SUBROUTINE WRITE_USETSTR

   END INTERFACE

   END MODULE WRITE_USETSTR_Interface

