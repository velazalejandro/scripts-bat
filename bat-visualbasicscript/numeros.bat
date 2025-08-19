@ECHO OFF
CLS
SETLOCAL
:inicio
SET /P leeUno=Dame un numero
SET /P leeDos=Dame otro numero
SET /P leeTres=Dame un tercer numero
IF /I %leeUno% GTR %leeDos% (
set mayor=%leeUno% 
set posmay=Primera posicion 
set menor=%leeDos%
set posmen=Segunda posicion
) else (
set menor=%leeUno% 
set posmen=Primera posicion
set mayor=%leeDos%
set posmay=Segunda posicion
)
IF /I %leeTres% GTR %mayor% (
set mayor=%leeTres%
set posmay=Tercera posicion
) else (
IF /I %menor% GTR %leeTres% (
set menor=%leeTres%
set posmen=Tercera posicion
)
)
IF /I %leeUno% EQU %leeDos% (
echo Vuelve a introducir los numeros sin que sean iguales
GOTO :inicio
) else (
IF /I %leeUno% EQU %leeTres% (
echo Vuelve a introducir los numeros sin que sean iguales
GOTO :inicio
) else ( 
IF /I %leeDos% EQU %leeTres% (
echo Vuelve a introducir los numeros sin que sean iguales
GOTO :inicio
)
)
)
echo El mayor es %mayor% y esta en la %posmay%
echo El menor es %menor% y esta en la %posmen%
ENDLOCAL
pause