@echo off
cls
REM color 8
cls
echo RODANDO...
echo %date% %time% 
echo.
echo.
echo %cd%
echo.

dir *.pdf /b /s >> arq.csv

start Rename_DOCs.xlsm

mkdir Renomeados

REM for /F "tokens=*" %%a in (%cd%\arq.csv) do echo %%a
for /F "tokens=*" %%b in (%cd%\arq.csv) do copy %%b

echo.
echo.
echo Mal feito, feito!
echo.
echo.
pause