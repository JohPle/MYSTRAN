! ##################################################################################################################################
 
      SUBROUTINE EPTL
 
! Element pressure and thermal loads processor
 
! Processes the elems to generate the elem pressure and thermal loads using the EMG set of routines.  The thermal
! and pressure loads are inserted into the system loads array SYS_LOAD.
 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, SC1, WRT_BUG, WRT_ERR, WRT_FIJ, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, ELDT_BUG_P_T_BIT, ELDT_F22_P_T_BIT, IBIT, MBUG, MELDOF, NCORD, NELE, NGRID, &
                                         NSUB, NTSUB
      USE CONSTANTS_1, ONLY           :  ZERO
      USE PARAMS, ONLY                :  EPSIL
      USE TIMDAT, ONLY                :  TSEC
      USE DOF_TABLES, ONLY            :  TDOF, TDOF_ROW_START
      USE SUBR_BEGEND_LEVELS, ONLY    :  EPTL_BEGEND
      USE MODEL_STUF, ONLY            :  ELDOF, ELDT, GRID, GRID_ID, CORD, AGRID, ELGP, NUM_EMG_FATAL_ERRS, PLY_NUM, PPE, PTE,     &
                                         SYS_LOAD, TYPE, SUBLOD

      USE EPTL_USE_IFs

      IMPLICIT NONE
 
      CHARACTER(LEN=LEN(BLNK_SUB_NAM)):: SUBR_NAME = 'EPTL'
      CHARACTER( 1*BYTE)              :: OPT(6)        

      INTEGER(LONG)                   :: EDOF(MELDOF)      ! A list of the G-set DOF's for an elem
      INTEGER(LONG)                   :: G_SET_COL_NUM     ! Col no. in array TDOF where G-set DOF's are kept 
      INTEGER(LONG)                   :: I,J,K             ! DO loop indices
      INTEGER(LONG)                   :: I1                ! Intermediate variable used in setting WRT_BUG(3) and OUT10
      INTEGER(LONG)                   :: IGRID             ! Internal grid ID
      INTEGER(LONG)                   :: IERROR            ! Local error indicator
      INTEGER(LONG)                   :: L                 ! Counter
      INTEGER(LONG)                   :: NUM_COMPS         ! 6 if GRID_NUM is an physical grid, 1 if an SPOINT
      INTEGER(LONG)                   :: ROW_NUM           ! Row no. in array TDOF corresponding to an elem DOF 
      INTEGER(LONG)                   :: ROW_NUM_START     ! Row no. in array TDOF where data begins for AGRID
      INTEGER(LONG)                   :: TCASE2(NSUB)      ! TCASE2(I) gives the internal subcase no. for internal thermal case I
!                                                            If there are 5 subcases and internal S/C 3 is the 1-st S/C to have
!                                                            thermal load and internal S/C 5 is the 2-nd to have thermal load:
!                                                            TCASE2(1-5) = 3, 5, 0, 0, 0 
                                                           ! Indicator for output of elem data to BUG file
      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = EPTL_BEGEND

      REAL(DOUBLE)                    :: DZE(MELDOF,MELDOF)! A dummy array for the call to ELEM_TRANSFORM_LBG
      REAL(DOUBLE)                    :: EPS1              ! A small number to compare real zero
 
      INTRINSIC IAND
 
      INTRINSIC                       :: DABS

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9001) SUBR_NAME,TSEC
 9001    FORMAT(1X,A,' BEGN ',F10.3)
      ENDIF

! **********************************************************************************************************************************
! Initialize

      EPS1 = EPSIL(1)

      OPT(1) = 'N'                                         ! OPT(1) is for calc of ME
      OPT(2) = 'N'                                         ! OPT(2) is for calc of PTE
      OPT(3) = 'N'                                         ! OPT(3) is for calc of SEi, STEi
      OPT(4) = 'N'                                         ! OPT(4) is for calc of KE-linear
      OPT(5) = 'N'                                         ! OPT(5) is for calc of PPE
      OPT(6) = 'N'                                         ! OPT(6) is for calc of KE-diff stiff

! Null dummy array DZE used in call to ELEM_TRANSFORM_LBG

      DO I=1,MELDOF
         DO J=1,MELDOF
            DZE(I,J) = ZERO
         ENDDO
      ENDDO

! Thermal load flag (OPT(2)). Need TCASE2 - table relating jth thermal case to ith subcase
 
      IF (NTSUB > 0) THEN
         OPT(2) = 'Y'                                       ! OPT(2) is for calc of PTE
         DO I = 1,NSUB
            TCASE2(I) = 0
         ENDDO 
         J = 0
         DO I = 1,NSUB
            IF (SUBLOD(I,2) /= 0) THEN
               J = J + 1
               TCASE2(J) = I
            ENDIF
         ENDDO   
      ELSE
         OPT(2) = 'N'
      ENDIF
 
! Set element pressure calc flag
 
      OPT(5) = 'Y'                                          ! OPT(5) is for calc of PPE
 
! Process the elements:
 
      IERROR = 0
      WRITE(SC1, * )                                       ! Advance 1 line for the screen messages         
      DO I = 1,NELE
 
         DO J=0,MBUG-1
            WRT_BUG(J) = 0
         ENDDO
         I1 = IAND(ELDT(I),IBIT(ELDT_BUG_P_T_BIT))         ! WRT_BUG(3) is for printed output of PTE, PPE
         IF (I1 > 0) THEN
            WRT_BUG(3) = 1
         ENDIF


         OPT(1) = 'N'                                      ! OPT(1) is for calc of ME
         OPT(3) = 'N'                                      ! OPT(3) is for calc of SEi, STEi
         OPT(4) = 'N'                                      ! OPT(4) is for calc of KE
 
         WRITE(SC1,12345 ) I, NELE
         PLY_NUM = 0
         CALL EMG ( I   , OPT, 'N', SUBR_NAME )

         IF (NUM_EMG_FATAL_ERRS /=0) THEN
            IERROR = IERROR + NUM_EMG_FATAL_ERRS
            CYCLE
         ENDIF 

         WRT_FIJ(2) = 0                                    ! Write element thermal, pressure, loads to disk file if requested
         I1 = IAND(ELDT(I),IBIT(ELDT_F22_P_T_BIT))
         IF (I1 > 0) THEN
            WRT_FIJ(2) = 1
         ENDIF
 
         IF (WRT_FIJ(2) > 0) THEN
            CALL WRITE_EOFIL ( 0 )
         ENDIF

         L = 0                                             ! Generate element DOF'S
         DO J = 1,ELGP
            CALL GET_ARRAY_ROW_NUM ( 'GRID_ID', SUBR_NAME, NGRID, GRID_ID, AGRID(J), IGRID )
            ROW_NUM_START = TDOF_ROW_START(IGRID)
            CALL GET_GRID_NUM_COMPS ( AGRID(J), NUM_COMPS, SUBR_NAME )
            DO K = 1,NUM_COMPS
               CALL TDOF_COL_NUM ( 'G ', G_SET_COL_NUM )
               ROW_NUM = ROW_NUM_START + K - 1
               L       = L + 1
               EDOF(L) = TDOF(ROW_NUM,G_SET_COL_NUM)
            ENDDO 
         ENDDO 

         IF (OPT(2) == 'Y') THEN                           ! Process the element thermal loads - PTE array:
                                                           ! Transform PTE from local-basic-global
            IF ((TYPE(1:4) /= 'ELAS') .AND. (TYPE /= 'USERIN  '))THEN
               CALL ELEM_TRANSFORM_LBG ( 'PTE', DZE, PTE )
            ENDIF

            DO J = 1,ELDOF                                 ! Load PTE into SYS_LOAD array.
k_do113:       DO K = 1,NTSUB
                  IF (DABS(PTE(J,K)) < EPS1) CYCLE k_do113
                  SYS_LOAD(EDOF(J),TCASE2(K)) = SYS_LOAD(EDOF(J),TCASE2(K)) + PTE(J,K)
               ENDDO k_do113
            ENDDO 
 
         ENDIF

         IF (OPT(5) == 'Y') THEN                           ! Process element pressure loads - PPE array.
                                                           ! Transform PTE from local-basic-global
            IF ((TYPE(1:4) /= 'ELAS') .AND. (TYPE /= 'USERIN  '))THEN
               CALL ELEM_TRANSFORM_LBG ( 'PPE', DZE, PPE )
            ENDIF

            DO J = 1,ELDOF                                 ! Load PPE into SYS_LOAD array.
k_do123:       DO K = 1,NSUB
                  IF (DABS(PPE(J,K)) < EPS1) CYCLE k_do123
                  SYS_LOAD(EDOF(J),K) = SYS_LOAD(EDOF(J),K) + PPE(J,K)
               ENDDO k_do123
            ENDDO 
 
         ENDIF
 
      ENDDO 
 
! Reset option values:
 
      OPT(2) = 'N'
      OPT(5) = 'N'
 
! Quit if IERROR > 0

      IF (IERROR > 0) THEN
         WRITE(ERR,9876) IERROR
         WRITE(F06,9876) IERROR
         CALL OUTA_HERE ( 'Y' )                            ! Errors from subr EMG, so quit
      ENDIF

! **********************************************************************************************************************************
      IF (WRT_LOG >= SUBR_BEGEND) THEN
         CALL OURTIM
         WRITE(F04,9002) SUBR_NAME,TSEC
 9002    FORMAT(1X,A,' END  ',F10.3)
      ENDIF

      RETURN

! **********************************************************************************************************************************
 9876 FORMAT(/,' PROCESSING ABORTED DUE TO ABOVE ',I8,' ELEMENT GENERATION ERRORS')

12345 FORMAT("+",5X,'Calculating load matrix for element     ',I8,' of ',I8)

98712 format('J, PPE(J) = ',i8,10(1es15.6))

! **********************************************************************************************************************************
 
      END SUBROUTINE EPTL
