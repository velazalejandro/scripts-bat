@echo off
:INICIO
cls
echo Menu seleccion
echo 1. Limpiar pantalla
echo 2. Listar carpeta windows por columnas
echo 3. Salir
echo Elige una opcion
set /p opcion=
if %opcion%==1 GOTO LIMPIAR
if %opcion%==2 GOTO LISTAR
if %opcion%==3 GOTO SALIR
GOTO ERROR
:LIMPIAR
cls
pause
:LISTAR
dir C:\Windows /P
pause
GOTO INICIO
:ERROR
echo Opcion incorrecta
pause
GOTO INICIO
:SALIR
exit /b
