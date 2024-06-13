REM Acesso ao usuario Administrador, desligamento requer permissao elevada, seguido da senha (asterisco para prompt)
REM Conexao ao computador remoto via comando 'net use', endereco pode ser nome do computador ou endereco IP
net use \\192.168.1.1 /user:Administrador *

REM Comando 'shutdown' para iniciar processo de encerramento do dispositivo, parametro -s para desligamento (shutdown), -t para tempo em segundos (time), -m para dispositivo remoto (machine) e -c (commentary) para uma mensagem curta que aparecera na tela do dispositivo
shutdown /s /t 60 /m \\192.168.1.1 /c "Desligamento remoto forçado pelo administrador (60s)"

exit
