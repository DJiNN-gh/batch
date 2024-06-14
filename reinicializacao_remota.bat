@echo off

REM Guardando o caminho/endereco
echo Insira o endereco ou nome do dispositivo:

set /p end_str=

REM Guardando o usuario

echo Insira o nome do usuario:

set /p usuario_str=

REM Adquirindo privilegio de administrador para a reinicializacao
net use \\%end_str% /user:%usuario_str% *

REM Passando parametros de reinicializacao (-r), tempo regressivo(-t), maquina remota (-m) e comentario (-c)
shutdown /r /t 60 /m \\%end_str% /c "Reinicialização remota forçada pelo administrador (60s)"

exit
