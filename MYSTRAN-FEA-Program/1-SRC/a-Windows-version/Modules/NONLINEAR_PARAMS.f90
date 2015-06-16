! ##################################################################################################################################

      MODULE NONLINEAR_PARAMS

! Variables used in nonlinear analyses

      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG
  
      IMPLICIT NONE

      SAVE

      CHARACTER(10*BYTE)              :: NL_NORM   = 'INFINITY  '! Method to use when getting the vector norm of UG_COL

      INTEGER(LONG)                   :: LOAD_ISTEP        = 0   ! In nonlinear statics, the load step number
!                                                                  In BUCKLING: 1 is the linear static sol'n, 
!                                                                               2 is the BUCKLING eigen step

      INTEGER(LONG)                   :: NL_ITER_NUM       = 0   ! Iteration number within any 1 load step
      INTEGER(LONG)                   :: NL_MAXITER        = 25  ! Max number of iterations per load step
      INTEGER(LONG)                   :: NL_NUM_LOAD_STEPS = 1   ! Number of load steps
      INTEGER(LONG), ALLOCATABLE      :: NL_SID(:)               ! Set ID on the NLPARM entry

      END MODULE NONLINEAR_PARAMS
