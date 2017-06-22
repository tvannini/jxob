:: parameters:
:: - developer
:: - prgdir
:: - object name
:: - temp file containing worksheet number + user comment
echo %1
echo %2
echo %3
echo %4
pause
cmd /c EXIT 1
svn add "%2%3" 2>NUL
svn commit -F "%4" "%2%3"
::if NOT %ERRORLEVEL% EQU 0 pause
IF ERRORLEVEL 1 GOTO ERR
GOTO DONE
:ERR
pause
cmd /c EXIT 1
:DONE
