@echo off
:INICIO
cls
echo Menu selección
echo 1. Limpiar pantalla
echo 2. Mostrar la hora del sistema
echo 3. Mostrar la fecha del sistema
echo 4. Mostrar etiqueta de disco
echo 5. SALIR
echo Elige una opcion
set /p opcion=
if %opcion%==1 GOTO LIMPIAR
if %opcion%==2 GOTO HORA
if %opcion%==3 GOTO FECHA
if %opcion%==4 GOTO VOLUMEN
if %opcion%==5 GOTO SALIR
GOTO ERROR
:LIMPIAR
cls
pause
GOTO INICIO
:HORA
TIME /T
pause
GOTO INICIO
:FECHA
DATE /T
pause
:VOLUMEN
vol >> hola.txt
pause
GOTO INICIO
:SALIR
exit /b
