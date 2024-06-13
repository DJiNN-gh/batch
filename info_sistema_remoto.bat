REM Executando o comando 'systeminfo' que captura os dados do dispositivo e imprime na tela ou em um arquivo, com detalhes sobre o sistema operacional e as configuracoes

@echo off

REM Guardando o caminho/endereco
echo Insira o endereco ou nome do dispositivo:

set /p end_str=

REM Guardando o usuario
echo Insira o nome do usuario:

set /p usuario_str=

REM Usando os parametros -s para indicar um dispositivo remoto, -u para definir um usuario, -p para a senha (asterisco produz um prompt) e -fo para o formato de exportacao
REM O simbolo '>' gera uma exportacao do arquivo para um endereco, numa extensao definida (compativel com o formato definido no parametro -fo)
systeminfo /s %end_str% /u \%usuario_str% /p * /fo csv > c:\users\public\documents\systeminfo.csv

exit
