@ECHO OFF
set cmd= 
:Loop
IF "%~1"=="" GOTO Continue

set cmd=%cmd% %1 

SHIFT
GOTO Loop
:Continue

powershell.exe -ExecutionPolicy Bypass -command "&'%~dp0ToggleWiFiAdapter.ps1' %cmd%"