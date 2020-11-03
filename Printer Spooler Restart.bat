@echo off
setlocal

echo This tool will Stop your Print Spooler, Delete temp printing files and Restart the Print Spooler.
echo.

:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

echo Stopping print spooler.
echo.
net stop spooler
echo deleting temp files.
echo.
del %windir%\system32\spool\printers\*.* /q
echo Starting print spooler.
echo.
net start spooler

:END
endlocal
Pause
