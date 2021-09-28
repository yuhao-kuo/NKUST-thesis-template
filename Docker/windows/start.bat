@echo off

docker ps | find "latex-srv" > docker.stat
set /p STAT=<docker.stat
del "docker.stat"

if ["%STAT"] == [""] (
	echo "[msg] latex-srv is running!"
	pause
	exit
)

set "BATPATH=%CD%"
cd %CD%\..\..
set "PROJECT_DIR=%CD%"
cd %BATPATH%

docker run --name latex-srv -it --rm -w /home/%UserName%/thesis -v %PROJECT_DIR%:/home/%UserName%/thesis -d nkusthesis

