cls
@echo off
setlocal
set /p n1=Introduce el Primer Numero:
set /p n2=Introduce el Segundo Numero:
set /p n3=Introduce el Tercer Numero:
set mayor=0
set menor=0
set posMa=0
set posMe=0
if /i %n1% GTR %n2% ( set mayor=%n1%
set posMa=1) else (set mayor=%n2%
set posMa=2)
if /i %mayor% GTR %n3% (set mayor=%mayor%) else (set mayor=%n3%
set posMa=3)
if /i %n1% LSS %n2% ( set menor=%n1%
set posMe=1) else (set menor=%n2%
set posMe=2)
if /i %menor% LSS %n3% ( set menor=%menor%) else (set menor=%n3%
set posMe=3)
echo el numero mayor es %mayor%
echo El numero mayor ocupa la posicion %posMa%
echo el numero menor es %menor%
echo El numero menor ocupa la posicion %posMe%
pause
endlocal