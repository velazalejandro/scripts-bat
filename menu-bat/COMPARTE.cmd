@ECHO OFF
CLS
ECHO.
ECHO ##########################
ECHO Crear recursos compartidos
ECHO ##########################
ECHO.
ECHO Por favor, dame el numero de sede en dos cifras.
SET /P SEDE=
MD F:\DATOS
NET SHARE DATOSS%SEDE%= F:\DATOS
MD F:\DOCUMENTOS
NET SHARE DOCUSS%SEDE%= F:\DOCUMENTOS
MD F:\TRABAJO
NET SHARE TRABAS%SEDE%= F:\TRABAJO
MD F:\PUBLIC
NET SHARE PUBLICS%SEDE%= F:\PUBLIC
MD F:\TEMPORAL
NET SHARE TEMPS%SEDE%= F:\TEMPORAL