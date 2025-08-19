@echo off
cls
REM Vamos hacer un menu
:Menu 
Echo Menu Examen
Echo ===========
Echo 1.Copias de seguridad
Echo 2.Crear usuarios y asignarlos a un grupo
Echo 3.Crear Raid como Script
ECHO 4.Salir
SET /P OPCION=ELIGE UNA OPCION
IF %OPCION%==1 goto Copias
IF %OPCION%==2 goto Usuarios
IF %OPCION%==3 goto Raid
IF %OPCION%==4 goto EOF
:Copias
	set drive=D:\Backup
	set backupcmd=XCOPY /E /F /I /C /Y

	echo Haciendo un respaldo de mis Documentos...
	%backupcmd% "%USERPROFILE%\Documents" "%drive%\Documentos"

	echo Haciendo un respaldo de mis Favoritos...
	%backupcmd% "%USERPROFILE%\Favorites" "%drive%\Favoritos"

	echo Haciendo un respaldo de correo (Windows Mail)...
	%backupcmd% "%userprofile%\AppData\Local\Microsoft\Window~1" "%drive%\Windows Mail"

	echo Haciendo un respaldo de correo (Thunderbird)...
	%backupcmd% "%userprofile%\AppData\Roaming\Thunderbird\Profiles" "%drive%\Thunderbird"

	echo Haciendo un respaldo de mis direcciones de correo...
	%backupcmd% "%userprofile%\Documents\CONTACTS" "%drive%\Contactos"

	echo Haciendo un respaldo del Registro...
	echo Espere...
	if not exist "%drive%\Registro" mkdir "%drive%\Registro"
	if exist "%drive%\Registro\regbackup.reg" del "%drive%\Registro\regbackup.reg"
	regedit /e "%drive%\Registro\regbackup.reg"

	echo Respaldo completo
	echo Presione una tecla para salir
	PAUSE > NULL
GOTO Menu
:Usuarios
	set /p a=dime el numero de usuarios
	net localgroup Usuario /add
	for /L %%x in (1,1,%a%) do (
	net  user Usuario%%x 123456 /add
	net localgroup Usuario Usuario%%x /add)
GOTO Menu
:Raid 
Diskpart
list disk
pause
list volume
pause
list partition
pause
list vdisk
pause
Echo quieres seleccionar un disco, crear una particion primaria o extendida
IF %OPCION%==1 goto Seleccionar
IF %OPCION%==2 goto Crear

:Seleccionar
IF %OPCION%==1 goto Borrar
IF %OPCION%==2 goto Formatear	
:Borrar
	list partition
	pause
	set /p Z=Elije una particion
	Select partition%Z%
	Delete partition
	goto :Menu
:Formatear
	list partition
	pause
	set /p Y=Elije una particion
	Format FS=NTFS
	Select partition%Y%
	Format FS=FAT32 LABEL "disco fact"
	goto :Menu


:Crear
IF %OPCION%==1 goto Primaria
IF %OPCION%==2 goto Extendida

:Primaria
	set /p tamaño=Dime el tamaño de la particion es MB
	create partition primary size=%tamaño%
	goto :Menu
:Extendida
	set /p tamaño2=Dime el tamaño de la particion es MB
	create partition extended size=%tamaño2%
	set /p tamaño3=Dime el tamaño de la particion es MB
	create partition logical size=%tamaño3%
	goto :Menu