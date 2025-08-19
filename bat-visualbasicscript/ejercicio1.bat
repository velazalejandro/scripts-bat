@echo off
cls
setlocal
net localgroup Alumnos /add
net user Juan 123456 /add
net localgroup Alumnos Juan /add
mkdir C:\curso
echo C:\curso\hora.txt < %time%
icacls C:\curso /grant Administradores:F
icacls C:\curso /grant alumnos:(R,W)
net share course=C:\curso
endlocal