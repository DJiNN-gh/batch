REM Utilizando o utilitario 'WMIC' para requisitar informacoes de um dispositivo remoto
wmic

REM Sao passados os parametros do endereco do computador (node) por nome ou IP, usuario (user) e senha (password) sempre entre aspas duplas ("") e precedidos por dois pontos na chamada (:)
/node:"192.168.1.1" /user:"Administrador"

REM Acessando o ambiente da BIOS e usando o metodo GET para requisitar o numero serial do dispositivo

bios get serialnumber
