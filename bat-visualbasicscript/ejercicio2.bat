@echo off
cls
setlocal
net localgroup Usuario /add
for /L %%x in (1 1 10) do (
net  user Usuario%%x 123456 /add
net localgroup Usuario Usuario%%x /add)
mkdir C:\datos
icacls C:\datos /grant Usuario:(W)
icacls C:\datos /grant Administradores:F /T
icacls C:\datos /grant Usuario1:F /T
icacls C:\datos /grant SYSTEM:F /T
mkdir c:\datos\privada
icacls C:\datos\privada /grant Administradores:F /T
icacls C:\datos\privada /grant SYSTEM:F /T
icacls C:\datos\privada /deny  Usuario1:F
net share datos=C:\datos
net share $ datos=C:\datos /grant:usuario,full
net share datos=C:\datos /grant:Administradores,full
endlocal



