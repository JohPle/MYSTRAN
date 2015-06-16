! ##################################################################################################################################

   MODULE IS_ELEM_PCOMP_PROPS_Interface

   INTERFACE

      SUBROUTINE IS_ELEM_PCOMP_PROPS ( INT_ELEM_ID )

 
      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE SCONTR, ONLY                :  DEDAT_T3_SHELL_KEY, DEDAT_Q4_SHELL_KEY 
      USE MODEL_STUF, ONLY            :  EDAT, EPNT, ETYPE, PCOMP_PROPS, TYPE

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID        ! Internal element ID for which
      END SUBROUTINE IS_ELEM_PCOMP_PROPS

   END INTERFACE

   END MODULE IS_ELEM_PCOMP_PROPS_Interface

