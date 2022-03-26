@echo off
title SERVER RUNNER BUILDER!

:start
echo Server Runner Builder is a script who create you a file where you can easily login into a server with SSH!
set /p username="Username? "
set /p ip="IP? "
set /p password="Password? "

cd %userprofile%\desktop
if exist server.bat (
	echo @echo off > server1.bat
	echo ssh %username%@%ip% -P %password% >> server1.bat
	echo exit >> server1.bat
	goto :end
)
echo @echo off > server.bat
echo ssh %username%@%ip% -P %password% >> server.bat
echo exit >> server.bat

:end
echo Your server runner is builded! Look at the desktop!
PAUSE