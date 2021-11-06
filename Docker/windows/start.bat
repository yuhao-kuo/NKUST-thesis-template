@echo off

docker ps | find "latex-srv" > docker.stat
set /p STAT=<docker.stat
del "docker.stat"

if NOT "%STAT%" == "" (
	echo "[msg] latex-srv is running!"
	pause
) else (
	docker run --name latex-srv -it --rm -w /home/%UserName%/thesis -v %CD:\Docker\windows=%:/home/%UserName%/thesis -d nkusthesis
)

