! ##################################################################################################################################

      MODULE CC_OUTPUT_DESCRIBERS

      USE PENTIUM_II_KIND, ONLY         :  BYTE, LONG
      USE SCONTR, ONLY                  :  CC_CMD_DESCRIBERS

      IMPLICIT NONE

      SAVE

! The following are the default values for the Case Control command describers. These are used to check the values in parens ()
! in Case Control entries to see if they are valid for MYSTRAN. The ones below are ones MYSTRAN honors. If other values are
! encountered in the users' Case Control, warning messages are written to the MYSTRAN output file.

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: DISP_SORT = 'SORT1   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: DISP_OUT  = 'PRINT   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: DISP_MAG  = 'MAG     '

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: GPFO_OUT  = 'SORT1   '

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: MPCF_SORT = 'SORT1   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: MPCF_OUT  = 'PRINT   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: MPCF_MAG  = 'MAG     '

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: OLOA_SORT = 'SORT1   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: OLOA_OUT  = 'PRINT   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: OLOA_MAG  = 'MAG     '

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: SPCF_SORT = 'SORT1   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: SPCF_OUT  = 'PRINT   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: SPCF_MAG  = 'MAG     '

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRN_SORT = 'SORT1   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRN_OUT  = 'PRINT   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRN_MAG  = 'MAG     '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRN_OPT  = 'VONMISES'
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRN_
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRN_LOC  = 'CENTER  '

      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRE_SORT = 'SORT1   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRE_OUT  = 'PRINT   '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRE_MAG  = 'MAG     '
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRE_OPT  = 'VONMISES'
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRE_
      CHARACTER(LEN(CC_CMD_DESCRIBERS)) :: STRE_LOC  = 'CENTER  '

      END MODULE CC_OUTPUT_DESCRIBERS
