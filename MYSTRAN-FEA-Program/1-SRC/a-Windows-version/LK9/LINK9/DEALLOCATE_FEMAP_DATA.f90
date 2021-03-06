! ##################################################################################################################################

      SUBROUTINE DEALLOCATE_FEMAP_DATA
 
! Deallocate arrays for FEMAP neutral file
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, TOT_MB_MEM_ALLOC 
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE TIMDAT, ONLY                :  TSEC
      USE CONSTANTS_1, ONLY           :  ZERO
      USE SUBR_BEGEND_LEVELS, ONLY    :  DEALLOCATE_FEMAP_DATA_BEGEND
      USE FEMAP_ARRAYS, ONLY          :  FEMAP_EL_VECS, FEMAP_EL_NUMS
 
      USE DEALLOCATE_FEMAP_DATA_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'DEALLOCATE_FEMAP_DATA'
      CHARACTER(24*BYTE)              :: NAME              ! Array name (used for output error message)
      CHARACTER(14*BYTE)              :: NAMEL             ! First 14 bytes of NAME
 
      INTEGER(LONG)                   :: IERR              ! STAT from DEALLOCATE
      INTEGER(LONG)                   :: JERR              ! Local error indicator
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = DEALLOCATE_FEMAP_DATA_BEGEND
 
      REAL(DOUBLE)                    :: CUR_MB_ALLOCATED  ! MB of memory that is currently allocated to ARRAY_NAME when subr
!                                                            ALLOCATED_MEMORY is called (before entering MB_ALLOCATED into array
!                                                            ALLOCATED_ARRAY_MEM

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
      JERR = 0

! Deallocate array FEMAP_EL_DATA
 
      IF (ALLOCATED(FEMAP_EL_NUMS)) THEN
         DEALLOCATE (FEMAP_EL_NUMS,STAT=IERR)
         NAME = 'FEMAP_EL_NUMS'
         CALL ALLOCATED_MEMORY ( NAME, ZERO, 'DEALLOC', 'Y', CUR_MB_ALLOCATED, SUBR_NAME )
         CALL WRITE_MEM_SUM_TO_F04 ( NAME, 'DEALLOC', -CUR_MB_ALLOCATED, 0, 0, SUBR_BEGEND )
         IF (IERR /= 0) THEN
            WRITE(ERR,992) NAME,SUBR_NAME
            WRITE(F06,992) NAME,SUBR_NAME
            JERR = JERR + 1
         ENDIF
      ENDIF 
 
      IF (ALLOCATED(FEMAP_EL_VECS)) THEN
         DEALLOCATE (FEMAP_EL_VECS,STAT=IERR)
         NAME = 'FEMAP_EL_VECS'
         CALL ALLOCATED_MEMORY ( NAME, ZERO, 'DEALLOC', 'Y', CUR_MB_ALLOCATED, SUBR_NAME )
         CALL WRITE_MEM_SUM_TO_F04 ( NAME, 'DEALLOC', -CUR_MB_ALLOCATED, 0, 0, SUBR_BEGEND )
         IF (IERR /= 0) THEN
            WRITE(ERR,992) NAME,SUBR_NAME
            WRITE(F06,992) NAME,SUBR_NAME
            JERR = JERR + 1
         ENDIF
      ENDIF 
 
! Quit if there were errors

      IF (JERR /= 0) THEN
         CALL OUTA_HERE ( 'Y' )
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
  992 FORMAT(' *ERROR   992: CANNOT DEALLOCATE MEMORY FROM ARRAY ',A,' IN SUBROUTINE ',A)
 
! **********************************************************************************************************************************
 
      END SUBROUTINE DEALLOCATE_FEMAP_DATA
