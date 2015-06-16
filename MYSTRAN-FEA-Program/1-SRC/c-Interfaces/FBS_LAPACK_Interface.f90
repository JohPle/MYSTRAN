! ##################################################################################################################################

   MODULE FBS_LAPACK_Interface

   INTERFACE

      SUBROUTINE FBS_LAPACK ( EQUED, NROWS, MATIN_SDIA, EQUIL_SCALE_FACS, INOUT_COL )


      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, LINKNO
      USE TIMDAT, ONLY                :  HOUR, MINUTE, SEC, SFRAC, STIME, TSEC       
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSERR, RCONDK
      USE LAPACK_DPB_MATRICES, ONLY   :  ABAND, LAPACK_S, RES
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG, NDEBUG
      USE MACHINE_PARAMS, ONLY        :  MACH_EPS, MACH_SFMIN
      USE LAPACK_LIN_EQN_DPB
      USE SUBR_BEGEND_LEVELS, ONLY    :  FBS_LAPACK_BEGEND

      IMPLICIT NONE
 
      CHARACTER(  1*BYTE), INTENT(IN) :: EQUED             ! 'Y' if MATIN was equilibrated in subr EQUILIBRATE (called herein)   
      CHARACTER(  1*BYTE), PARAMETER  :: UPLO        = 'U' ! Indicates upper triang part of matrix is stored

      INTEGER(LONG), INTENT(IN)       :: MATIN_SDIA        ! No. of superdiags in the MATIN upper triangle
      INTEGER(LONG), INTENT(IN)       :: NROWS             ! Number of rows in sparse matrix MATIN
      INTEGER(LONG), PARAMETER        :: NUM_COLS    = 1   ! Number of vectors to solve in this call
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = FBS_LAPACK_BEGEND

      REAL(DOUBLE) , INTENT(IN)       :: EQUIL_SCALE_FACS(NROWS)

      REAL(DOUBLE) , INTENT(INOUT)    :: INOUT_COL(NROWS)    ! INOUT input  vector

      END SUBROUTINE FBS_LAPACK

   END INTERFACE

   END MODULE FBS_LAPACK_Interface

