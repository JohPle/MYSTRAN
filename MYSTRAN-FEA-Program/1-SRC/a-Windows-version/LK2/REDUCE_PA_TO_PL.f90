! ##################################################################################################################################

      SUBROUTINE REDUCE_PA_TO_PL ( PART_VEC_A_LR, PART_VEC_SUB )
 
! Call routines to reduce the PA grid point load matrix from the A-set to the L, R-sets. See Appendix B to the MYSTRAN User's
! Reference Manual for the derivation of the reduction equations.
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  WRT_BUG, WRT_ERR, WRT_LOG, ERR, F04, F06
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, NDOFA, NDOFL, NDOFR, NSUB, NTERM_GOA, NTERM_PA, NTERM_PL, NTERM_PR
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  REDUCE_PA_TO_PL_BEGEND
      USE CONSTANTS_1, ONLY           :  ONE 
      USE SPARSE_MATRICES, ONLY       :  I_PA, J_PA, PA, I_PL, J_PL, PL, I_PR, J_PR, PR, I_GOA, J_GOA, GOA, I_GOAt, J_GOAt, GOAt 
      USE SPARSE_MATRICES, ONLY       :  SYM_PA, SYM_PL, SYM_PR
 
      USE REDUCE_PA_TO_PL_USE_IFs

      IMPLICIT NONE
               
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)) :: SUBR_NAME = 'REDUCE_PA_TO_PL'
      CHARACTER(132*BYTE)              :: MATRIX_NAME         ! Name of matrix for printout 
 
      INTEGER(LONG), INTENT(IN)        :: PART_VEC_A_LR(NDOFA)! Partitioning vector (F set into A and O sets) 
      INTEGER(LONG), INTENT(IN)        :: PART_VEC_SUB(NSUB)  ! Partitioning vector (1's for all subcases) 
      INTEGER(LONG), PARAMETER         :: NUM1        = 1     ! Used in subr's that partition matrices
      INTEGER(LONG), PARAMETER         :: NUM2        = 2     ! Used in subr's that partition matrices
      INTEGER(LONG)                    :: PL_ROW_MAX_TERMS    ! Output from subr PARTITION_SIZE (max terms in any row of matrix)
      INTEGER(LONG)                    :: PR_ROW_MAX_TERMS    ! Output from subr PARTITION_SIZE (max terms in any row of matrix)
      INTEGER(LONG), PARAMETER         :: SUBR_BEGEND = REDUCE_PA_TO_PL_BEGEND

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Partition PL from PA

      IF (NDOFL > 0) THEN

         CALL PARTITION_SS_NTERM ( 'PA' , NTERM_PA , NDOFA, NSUB , SYM_PA , I_PA , J_PA      , PART_VEC_A_LR, PART_VEC_SUB,        &
                                    NUM1, NUM1, PL_ROW_MAX_TERMS, 'PL', NTERM_PL, SYM_PL ) 

         CALL ALLOCATE_SPARSE_MAT ( 'PL', NDOFL, NTERM_PL, SUBR_NAME )

         IF (NTERM_PL  > 0) THEN
            CALL PARTITION_SS ( 'PA' , NTERM_PA , NDOFA, NSUB , SYM_PA , I_PA , J_PA , PA , PART_VEC_A_LR, PART_VEC_SUB,           &
                                 NUM1, NUM1, PL_ROW_MAX_TERMS, 'PL', NTERM_PL , NDOFL, SYM_PL, I_PL , J_PL , PL  )
         ENDIF
                            
      ENDIF

! Partition PR from PA

      IF (NDOFR > 0) THEN

         CALL PARTITION_SS_NTERM ( 'PA' , NTERM_PA , NDOFA, NSUB , SYM_PA , I_PA , J_PA ,      PART_VEC_A_LR, PART_VEC_SUB,        &
                                    NUM2, NUM1, PR_ROW_MAX_TERMS, 'PR', NTERM_PR, SYM_PR ) 

         CALL ALLOCATE_SPARSE_MAT ( 'PR', NDOFR, NTERM_PR, SUBR_NAME )

         IF (NTERM_PR  > 0) THEN
            CALL PARTITION_SS ( 'PA' , NTERM_PA , NDOFA, NSUB , SYM_PA , I_PA , J_PA , PA , PART_VEC_A_LR, PART_VEC_SUB,           &
                                 NUM2, NUM1, PR_ROW_MAX_TERMS, 'PR', NTERM_PR , NDOFR, SYM_PR, I_PR , J_PR , PR  )
         ENDIF

      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 
      END SUBROUTINE REDUCE_PA_TO_PL

