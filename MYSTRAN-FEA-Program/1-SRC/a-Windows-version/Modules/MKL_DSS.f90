! ##################################################################################################################################
 
      MODULE MKL_DSS

! Module supplied by Intel for use with their Math Kernel Library (MKL) for their sparse matrix linear equation solver

        USE MKL_DSS_PRIVATE

      INTEGER, PARAMETER :: MKL_DSS_DEFAULTS = 0

!
! Out-of-core level option definitions
!

      INTEGER, PARAMETER :: MKL_DSS_OOC_VARIABLE                =  1024
      INTEGER, PARAMETER :: MKL_DSS_OOC_STRONG                  =  2048

!
! Message level option definitions
!

      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_SUCCESS             = -2147483647
      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_DEBUG               = -2147483646
      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_INFO                = -2147483645
      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_WARNING             = -2147483644
      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_ERROR               = -2147483643
      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_FATAL               = -2147483642

!
! Termination level option definitions
!

      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_SUCCESS            =  1073741832
      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_DEBUG              =  1073741840
      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_INFO               =  1073741848
      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_WARNING            =  1073741856
      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_ERROR              =  1073741864
      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_FATAL              =  1073741872

!
! Structure option definitions
!

      INTEGER, PARAMETER :: MKL_DSS_SYMMETRIC                   =  536870976
      INTEGER, PARAMETER :: MKL_DSS_SYMMETRIC_STRUCTURE         =  536871040
      INTEGER, PARAMETER :: MKL_DSS_NON_SYMMETRIC               =  536871104

!
! Reordering option definitions
!

      INTEGER, PARAMETER :: MKL_DSS_AUTO_ORDER                  =  268435520
      INTEGER, PARAMETER :: MKL_DSS_MY_ORDER                    =  268435584
      INTEGER, PARAMETER :: MKL_DSS_OPTION1_ORDER               =  268435648

!
! Factorization option definitions
!

      INTEGER, PARAMETER :: MKL_DSS_POSITIVE_DEFINITE           =  134217792
      INTEGER, PARAMETER :: MKL_DSS_INDEFINITE                  =  134217856
      INTEGER, PARAMETER :: MKL_DSS_HERMITIAN_POSITIVE_DEFINITE =  134217920
      INTEGER, PARAMETER :: MKL_DSS_HERMITIAN_INDEFINITE        =  134217984

!
! Return status values
!
            
      INTEGER, PARAMETER :: MKL_DSS_SUCCESS                     =  0
      INTEGER, PARAMETER :: MKL_DSS_ZERO_PIVOT                  = -1
      INTEGER, PARAMETER :: MKL_DSS_OUT_OF_MEMORY               = -2
      INTEGER, PARAMETER :: MKL_DSS_FAILURE                     = -3
      INTEGER, PARAMETER :: MKL_DSS_ROW_ERR                     = -4
      INTEGER, PARAMETER :: MKL_DSS_COL_ERR                     = -5
      INTEGER, PARAMETER :: MKL_DSS_TOO_FEW_VALUES              = -6
      INTEGER, PARAMETER :: MKL_DSS_TOO_MANY_VALUES             = -7
      INTEGER, PARAMETER :: MKL_DSS_NOT_SQUARE                  = -8
      INTEGER, PARAMETER :: MKL_DSS_STATE_ERR                   = -9
      INTEGER, PARAMETER :: MKL_DSS_INVALID_OPTION              = -10
      INTEGER, PARAMETER :: MKL_DSS_OPTION_CONFLICT             = -11
      INTEGER, PARAMETER :: MKL_DSS_MSG_LVL_ERR                 = -12
      INTEGER, PARAMETER :: MKL_DSS_TERM_LVL_ERR                = -13
      INTEGER, PARAMETER :: MKL_DSS_STRUCTURE_ERR               = -14
      INTEGER, PARAMETER :: MKL_DSS_REORDER_ERR                 = -15
      INTEGER, PARAMETER :: MKL_DSS_VALUES_ERR                  = -16
      INTEGER, PARAMETER :: MKL_DSS_STATISTICS_INVALID_MATRIX   = -17
      INTEGER, PARAMETER :: MKL_DSS_STATISTICS_INVALID_STATE    = -18
      INTEGER, PARAMETER :: MKL_DSS_STATISTICS_INVALID_STRING   = -19

!
! Function prototypes for DSS routines
!

      INTERFACE
        FUNCTION DSS_CREATE( HANDLE, OPT )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(OUT)   :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER                             :: DSS_CREATE
        END FUNCTION DSS_CREATE
      END INTERFACE

      INTERFACE
        FUNCTION DSS_DEFINE_STRUCTURE( HANDLE, OPT, ROWINDEX, NROWS, RCOLS, COLUMNS, NNONZEROS )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(INOUT) :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER,              INTENT(IN)    :: NROWS
          INTEGER,              INTENT(IN)    :: RCOLS
          INTEGER,              INTENT(IN)    :: NNONZEROS
          INTEGER,              INTENT(IN)    :: ROWINDEX( * ) ! * = MIN(NROWS, NCOLS)+1
          INTEGER,              INTENT(IN)    :: COLUMNS( * ) ! * = NNONZEROS
          INTEGER                             :: DSS_DEFINE_STRUCTURE
        END FUNCTION DSS_DEFINE_STRUCTURE
      END INTERFACE

      INTERFACE
        FUNCTION DSS_REORDER( HANDLE, OPT, PERM )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(INOUT) :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER,              INTENT(IN)    :: PERM( * )
          INTEGER                             :: DSS_REORDER
        END FUNCTION DSS_REORDER
      END INTERFACE

      INTERFACE
        FUNCTION DSS_FACTOR_REAL( HANDLE, OPT, RVALUES )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(INOUT) :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          REAL(KIND=8),         INTENT(IN)    :: RVALUES( * )
          INTEGER                             :: DSS_FACTOR_REAL
        END FUNCTION DSS_FACTOR_REAL
      END INTERFACE

      INTERFACE
        FUNCTION DSS_FACTOR_COMPLEX( HANDLE, OPT, RVALUES )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(INOUT) :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          COMPLEX(KIND=8),      INTENT(IN)    :: RVALUES( * )
          INTEGER                             :: DSS_FACTOR_COMPLEX
        END FUNCTION DSS_FACTOR_COMPLEX
      END INTERFACE

      INTERFACE
        FUNCTION DSS_SOLVE_REAL( HANDLE, OPT, RRHSVALUES, NRHS, RSOLVALUES )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(INOUT) :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER,              INTENT(IN)    :: NRHS
          REAL(KIND=8),         INTENT(IN)    :: RRHSVALUES( * )
          REAL(KIND=8),         INTENT(OUT)   :: RSOLVALUES( * )
          INTEGER                             :: DSS_SOLVE_REAL
        END FUNCTION DSS_SOLVE_REAL
      END INTERFACE

      INTERFACE
        FUNCTION DSS_SOLVE_COMPLEX( HANDLE, OPT, RRHSVALUES, NRHS, RSOLVALUES )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(INOUT) :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER,              INTENT(IN)    :: NRHS
          COMPLEX(KIND=8),      INTENT(IN)    :: RRHSVALUES( * )
          COMPLEX(KIND=8),      INTENT(OUT)   :: RSOLVALUES( * )
          INTEGER                             :: DSS_SOLVE_COMPLEX
        END FUNCTION DSS_SOLVE_COMPLEX
      END INTERFACE

      INTERFACE
        FUNCTION DSS_DELETE( HANDLE, OPT )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(IN)    :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER                             :: DSS_DELETE
        END FUNCTION DSS_DELETE
      END INTERFACE

      INTERFACE
        FUNCTION DSS_STATISTICS( HANDLE, OPT, STAT, RET )
          USE MKL_DSS_PRIVATE
          TYPE(MKL_DSS_HANDLE), INTENT(IN)    :: HANDLE
          INTEGER,              INTENT(IN)    :: OPT
          INTEGER,              INTENT(IN)    :: STAT( * )
          REAL(KIND=8),         INTENT(OUT)   :: RET( * )
          INTEGER                             :: DSS_STATISTICS
        END FUNCTION DSS_STATISTICS
      END INTERFACE

      INTERFACE
        SUBROUTINE MKL_CVT_TO_NULL_TERMINATED_STR( DESTSTR, DESTLEN, SRCSTR )
          INTEGER,              INTENT(OUT)   :: DESTSTR( * )
          INTEGER,              INTENT(IN)    :: DESTLEN
          CHARACTER(*),         INTENT(IN)    :: SRCSTR
        END SUBROUTINE MKL_CVT_TO_NULL_TERMINATED_STR
      END INTERFACE

      END MODULE MKL_DSS
