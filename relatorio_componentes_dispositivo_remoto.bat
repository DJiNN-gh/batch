REM Criando um relatorio geral dos componentes de um dispositivo remotamente através da ferramenta de sistema 'MSInfo32'
@echo off

REM Guardando o caminho/endereco
echo Insira o endereco ou nome do computador:

set /p end_str=

REM Guardando o usuario
echo Insira o nome do usuario:

set /p usuario_str=

REM Acessando o dispositivo remoto com privilegios de administrador
net use \\%end_str% /user:%usuario_str% *

REM Executando a ferramenta com os parametros de exportacao de arquivo (report) com o endereco de armazenamento e o endereco ou nome do dispositivo remoto (computer)
msinfo32 /report "c:\users\public\documents\%end_str%.txt" /computer %end_str%

exit
