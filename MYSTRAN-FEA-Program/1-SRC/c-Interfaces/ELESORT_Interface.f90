! ##################################################################################################################################

   MODULE ELESORT_Interface

   INTERFACE

      SUBROUTINE ELESORT

     
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, ELESORT_RUN, NELE, NRIGEL
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  ELESORT_BEGEND
      USE MODEL_STUF, ONLY            :  EDAT, EOFF, EPNT, ESORT1, ESORT2, ETYPE, RIGID_ELEM_IDS
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE
 
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = ELESORT_BEGEND
  
      END SUBROUTINE ELESORT

   END INTERFACE

   END MODULE ELESORT_Interface

