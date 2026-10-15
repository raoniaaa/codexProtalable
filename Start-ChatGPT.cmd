@echo off
setlocal
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Start-ChatGPT.ps1"
if errorlevel 1 (
  echo.
  echo Launch failed. See the error above.
  pause
  exit /b 1
)
