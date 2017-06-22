:: parameters:
:: - developer
:: - prgdir
:: - object name

::svn cleanup "%2/.."
::svn up "%2%3" -r HEAD --force
IF ERRORLEVEL 1 GOTO ERR
GOTO DONE
:ERR
pause
cmd /c EXIT 1
:DONE
