REM O desligamento requer permissao elevada de administrador, portanto primeiro usa-se 'net use' seguido da senha (asterisco para prompt)

@echo off

REM Adquirindo o caminho/endereco
echo Insira o endereco ou nome do dispositivo:

set /p end_str=

REM Adquirindo o usuario
echo Insira o nome do usuario:

set /p usuario_str=

REM Conexao ao computador remoto via comando 'net use', endereco pode ser nome do computador ou endereco IP
net use \\%end_str% /user:%usuario_str% *

REM Comando 'shutdown' para iniciar processo de encerramento do dispositivo, parametro -s para desligamento (shutdown), -t para tempo em segundos (time), -m para dispositivo remoto (machine) e -c (commentary) para uma mensagem curta que aparecera na tela do dispositivo
shutdown /s /t 60 /m \\%end_str% /c "Desligamento remoto forçado pelo administrador (60s)"

exit
