if not "%1" == "" (
  echo ************************************************************************
  echo *
  echo *   building %_ARM_CURRENT_DIR%\%1...
  echo *
  echo ************************************************************************
  cd %1
  qmake
  nmake %_ARM_BUILD_CONFIG%
  cd %_ARM_CURRENT_DIR%
)
