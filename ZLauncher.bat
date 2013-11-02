@echo off
title ZLauncher 1.0
echo ZLauncher 1.0
set /p abc="What is your server path?> "
IF EXIST %abc% goto Verified
IF NOT EXIST %abc% echo Server path nonexistent. && goto esys
:Verified
echo Server path exists! Loading your server...
set /p javaarg="Java Arguments (separate with spaces): "
goto ServerLaunch
:ServerLaunch
java %javaarg% %abc%
set /p serverend="Restart? (Y/N)> "
IF %serverend%=="Y" goto ServerLaunch
IF %serverend%=="N" goto esys
:esys
echo Good bye! Thanks!
timeout /NOBREAK 10 > nul
exit
