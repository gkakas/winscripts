@ECHO OFF
REM MUST BE RUN FROM PARENT FOLDER (NOT MANDATORILY IN SVN)
ECHO PRESS ANY KEY TO START UPDATING LOCAL SVN FOLDERS
PAUSE

SETLOCAL enabledelayedexpansion

FOR /d %%a IN (*) do (
echo "Updating: %%a"
cd "%%a"
"c:\Program Files\TortoiseSvn\bin\svn.exe" update --ignore-externals
cd ..
)

ENDLOCAL

PAUSE