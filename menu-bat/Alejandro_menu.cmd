@echo off
cls
:inicio
cls
ECHO .................................................
ECHO .................ER MENU.........................
ECHO #################################################
ECHO 1. CREAR RAID5 3 discos
ECHO 2. CREAR RECURSoS CoMpArTiDoS
ECHO 3. CREAR USUARIOS
ECHO 4. SALIR
ECHO #################################################
ECHO #################################################


SET /P opcion= QUE OPCION ELIGES
IF "%opcion%"=="1" call "RAID.s"
IF "%opcion%"=="1" call "COMPARTE.cmd"
IF "%opcion%"=="1" call "configUsuarios.CMD"
IF "%opcion%"=="1" GOTO salir
IF "%opcion%" GTR "4" GOTO inicio
:salir
:EOF

