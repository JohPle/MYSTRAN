! ##################################################################################################################################

      SUBROUTINE IS_ELEM_PCOMP_PROPS ( INT_ELEM_ID )
 
! Given a shell (TRIA3 or QUAD4) element's internal ID, determine if its properties are defined on a Bulk Data PCOMP entry

      USE PENTIUM_II_KIND, ONLY       :  LONG
      USE SCONTR, ONLY                :  DEDAT_T3_SHELL_KEY, DEDAT_Q4_SHELL_KEY 
      USE MODEL_STUF, ONLY            :  EDAT, EPNT, ETYPE, PCOMP_PROPS, TYPE

      USE IS_ELEM_PCOMP_PROPS_USE_IFs

      IMPLICIT NONE

      INTEGER(LONG), INTENT(IN)       :: INT_ELEM_ID        ! Internal element ID for which
      INTEGER(LONG)                   :: EPNTK              ! Value from array EPNT at the row for this internal elem ID. It is the
!                                                             row number in array EDAT where data begins for this element. 
! **********************************************************************************************************************************
      EPNTK = EPNT(INT_ELEM_ID)
      TYPE  = ETYPE(INT_ELEM_ID)

      PCOMP_PROPS = 'N'
      IF      (TYPE(1:5) == 'TRIA3') THEN
         IF (EDAT(EPNTK+DEDAT_T3_SHELL_KEY) == 2) THEN
            PCOMP_PROPS = 'Y'
         ENDIF
      ELSE IF (TYPE(1:5) == 'QUAD4') THEN
         IF (EDAT(EPNTK+DEDAT_Q4_SHELL_KEY) == 2) THEN
            PCOMP_PROPS = 'Y'
         ENDIF
      ENDIF

! **********************************************************************************************************************************

      END SUBROUTINE IS_ELEM_PCOMP_PROPS