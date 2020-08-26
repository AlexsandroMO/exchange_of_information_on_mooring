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

set /p sbr=Digite o SBR: 

dir *.pdf /b /s >> W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv

for /F "tokens=*" %%a in (W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv) do echo %%a
echo %cd% >> W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv
echo %sbr% >> W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv
echo.
echo.

mkdir Renomeados
start W:\DIN\GD\01_PUBLICO\Rename_Docs\Rename_DOCs.xlsm

for /F "tokens=*" %%b in (W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv) do copy %%b
for /F "tokens=*" %%a in (W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv) do echo %%a

rem del W:\DIN\GD\01_PUBLICO\Rename_Docs\arq.csv

echo.
echo.
echo Mal feito, feito!
echo.
echo.
pause