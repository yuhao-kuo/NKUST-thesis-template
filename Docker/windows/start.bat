
set "BATPATH=%CD%"
cd %CD%\..\..
set "PROJECT_DIR=%CD%"
cd %BATPATH%

docker run --name latex-srv -it --rm -w /home/thesis -v %PROJECT_DIR%:/home/thesis -d nkusthesis

