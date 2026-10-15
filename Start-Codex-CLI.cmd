@echo off
setlocal
set "CODEX_HOME=%~dp0Data\codex-home"
if not exist "%CODEX_HOME%" mkdir "%CODEX_HOME%"
"%~dp0app\resources\codex.exe" %*
