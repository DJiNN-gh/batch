@echo off

REM Guardando o caminho/endereco
echo Insira o endereco ou nome do dispositivo:

set /p end_str=

REM Guardando o usuario
echo Insita o nome do usuario:

set /p usuario_str=

REM Utilizando o utilitario 'WMIC' para requisitar informacoes de um dispositivo remoto no ambiente da BIOS usando o metodo GET
REM Sao passados os parametros do endereco do computador (node) por nome ou IP e usuario (user) sempre entre aspas duplas ("") e precedidos por dois pontos na chamada (:)
REM Um prompt para senha sera iniciado quando o argumento (password) nao for passado no comando
wmic /node:"%end_str%" /user:"%usuario_str%" /output:"c:\users\public\documents\%end_str%.txt" bios get serialnumber

exit
