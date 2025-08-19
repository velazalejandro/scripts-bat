@ECHO OFF
REM MENU DE CONFIGURACION PARA EMPRESA CRIPTA-TRANS
CLS
:INICIO
REM CONTROL
ECHO.
ECHO #####
ECHO MENU
ECHO #####
ECHO.
ECHO (Seguir el orden del menú para una correcta configuracion)
ECHO.
ECHO 1. Crear RAID5 de 3 discos.
ECHO 2. Crear recursos compartidos.
ECHO 3. Crear usuarios.
ECHO 4. Salir
ECHO.
CHOICE /C 1234 /M "Que opcion quieres?"
GOTO :OPCION%ERRORLEVEL%
:OPCION1
Diskpart /s RAID5everybody.s
echo "RAID CREADO. Pulse una tecla para continuar . . ."
pause>nul
GOTO :REPITE
:OPCION2
CALL COMPARTE.CMD
echo " Recursos compartidos creados con exito. Pulse una tecla para continuar . . ."
pause>nul
GOTO :REPITE
:OPCION3
CALL configUsuarios.cmd
echo " Usuarios creados con exito. Pulse una tecla para finalizar. . ."
pause>nul
GOTO :REPITE
:OPCION4
GOTO :EOF
:REPITE
CHOICE /C SN /M "Quieres volver al menu?"
IF ERRORLEVEL == 2 GOTO :EOF
IF ERRORLEVEL == 1 GOTO :INICIO
