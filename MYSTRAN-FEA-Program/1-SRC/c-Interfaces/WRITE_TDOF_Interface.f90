! ##################################################################################################################################

   MODULE WRITE_TDOF_Interface

   INTERFACE

      SUBROUTINE WRITE_TDOF ( TDOF_MSG )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
      USE IOUNT1, ONLY                :  F04, F06, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, MTDOF, NDOFG, NDOFM, NDOFN, NDOFSA, NDOFSB, NDOFSG, NDOFSZ, NDOFSE, NDOFS,  &
                                         NDOFF, NDOFO, NDOFA, NDOFR, NDOFL, NGRID, NUM_USET_U1, NUM_USET_U2
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF, TDOFI
      USE PARAMS, ONLY                :  PRTDOF
      USE MODEL_STUF, ONLY            :  GRID_ID, INV_GRID_SEQ
      USE SUBR_BEGEND_LEVELS, ONLY    :  WRITE_TDOF_BEGEND

      IMPLICIT NONE

      CHARACTER(LEN=*), INTENT(IN)    :: TDOF_MSG          ! Message to be printed out regarding at what point in the run the TDOF,I
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = WRITE_TDOF_BEGEND

      END SUBROUTINE WRITE_TDOF

   END INTERFACE

   END MODULE WRITE_TDOF_Interface

