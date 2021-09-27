
set "BATPATH=%CD%"
cd %CD%\..\..
set "PROJECT_DIR=%CD%"
cd %BATPATH%

docker run --name latex-srv -it --rm -w /home/%UserName%/thesis -v %PROJECT_DIR%:/home/%UserName%/thesis -d nkusthesis

