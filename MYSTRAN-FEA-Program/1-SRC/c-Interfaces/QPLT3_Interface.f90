! ##################################################################################################################################

   MODULE QPLT3_Interface

   INTERFACE

      SUBROUTINE QPLT3 ( OPT, AREA_QUAD, XSD, YSD, BIG_BB )

 
      USE PENTIUM_II_KIND, ONLY       :  BYTE, LONG, DOUBLE
      USE IOUNT1, ONLY                :  ERR, F04, F06, WRT_ERR, WRT_LOG
      USE SCONTR, ONLY                :  BLNK_SUB_NAM, FATAL_ERR, MEFE, NSUB, NTSUB
      USE TIMDAT, ONLY                :  TSEC
      USE SUBR_BEGEND_LEVELS, ONLY    :  QPLT3_BEGEND
      USE CONSTANTS_1, ONLY           :  ZERO, QUARTER, HALF, ONE, TWO, FOUR
      USE PARAMS, ONLY                :  EPSIL, MIN4TRED
      USE MACHINE_PARAMS, ONLY        :  MACH_SFMIN
      USE MODEL_STUF, ONLY            :  BE2, BE3, BENSUM, DT, EID, ELDOF, EMG_IFE, EMG_RFE, EB, ET, ERR_SUB_NAM,                  &
                                         NUM_EMG_FATAL_ERRS, FCONV, KE, PHI_SQ, PPE, PSI_HAT, PRESS, PTE, SE2, SE3, SHRSUM,        &
                                         TE, TYPE, XEL
      USE DEBUG_PARAMETERS, ONLY      :  DEBUG
 
      IMPLICIT NONE 
  
      CHARACTER(1*BYTE), INTENT(IN)   :: OPT(6)            ! 'Y'/'N' flags for whether to calc certain elem matrices.
      CHARACTER(1*BYTE)               :: OPT_MIN4T(6)      ! Values of OPT to use in this subr. We need OPT(4) = 'Y' if the
      INTEGER(LONG), PARAMETER        :: IDV(9)  = (/ 1, & ! IDV( 1) =  1 means tria elem virgin DOF 1 is MYSTRAN elem DOF  1
                                                      4, & ! IDV( 2) =  4 means tria elem virgin DOF 2 is MYSTRAN elem DOF  4
                                                      7, & ! IDV( 3) =  7 means tria elem virgin DOF 3 is MYSTRAN elem DOF  7
                                                      2, & ! IDV( 4) =  2 means tria elem virgin DOF 4 is MYSTRAN elem DOF  2
                                                      5, & ! IDV( 5) =  5 means tria elem virgin DOF 5 is MYSTRAN elem DOF  5
                                                      8, & ! IDV( 6) =  8 means tria elem virgin DOF 6 is MYSTRAN elem DOF  8
                                                      3, & ! IDV( 7) =  3 means tria elem virgin DOF 7 is MYSTRAN elem DOF  3
                                                      6, & ! IDV( 8) =  6 means tria elem virgin DOF 8 is MYSTRAN elem DOF  6
                                                      9 /) ! IDV( 9) =  9 means tria elem virgin DOF 9 is MYSTRAN elem DOF  9

      INTEGER(LONG), PARAMETER        :: IDM(12) = (/ 3, & ! IDM( 1) =  3 means quad elem DOF  1 is MYSTRAN elem DOF  3
                                                      4, & ! IDM( 2) =  4 means quad elem DOF  2 is MYSTRAN elem DOF  4
                                                      5, & ! IDM( 3) =  5 means quad elem DOF  3 is MYSTRAN elem DOF  5
                                                      9, & ! IDM( 4) =  8 means quad elem DOF  4 is MYSTRAN elem DOF  9
                                                     10, & ! IDM( 5) = 10 means quad elem DOF  5 is MYSTRAN elem DOF 10
                                                     11, & ! IDM( 6) = 11 means quad elem DOF  6 is MYSTRAN elem DOF 11
                                                     15, & ! IDM( 7) = 15 means quad elem DOF  7 is MYSTRAN elem DOF 15
                                                     16, & ! IDM( 8) = 16 means quad elem DOF  8 is MYSTRAN elem DOF 16
                                                     17, & ! IDM( 9) = 17 means quad elem DOF  9 is MYSTRAN elem DOF 17
                                                     21, & ! IDM(10) = 21 means quad elem DOF 10 is MYSTRAN elem DOF 21
                                                     22, & ! IDM(11) = 22 means quad elem DOF 11 is MYSTRAN elem DOF 22
                                                     23 /) ! IDM(12) = 23 means quad elem DOF 12 is MYSTRAN elem DOF 23

      INTEGER(LONG), PARAMETER        :: SUBR_BEGEND = QPLT3_BEGEND
  
      REAL(DOUBLE) , INTENT(IN)       :: AREA_QUAD         ! Element area
      REAL(DOUBLE) , INTENT(IN)       :: XSD(4)            ! Diffs in x coords of quad sides in local coords
      REAL(DOUBLE) , INTENT(IN)       :: YSD(4)            ! Diffs in y coords of quad sides in local coords

      REAL(DOUBLE) , INTENT(OUT)      :: BIG_BB(3,ELDOF,4)

      REAL(DOUBLE)                    :: DUM3(3,18,1)      ! Matrix returned from subr TPLT2 not used here (BIG_BB for a tria but we
      END SUBROUTINE QPLT3

   END INTERFACE

   END MODULE QPLT3_Interface

