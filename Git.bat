@echo off
title Menu Git - Instalação e Configuração
color 0a

:MENU
cls
echo ================================
echo       MENU DE OPCOES - GIT
echo ================================
echo 1. Baixar e instalar Git (via wget)
echo 2. Configurar usuario
echo 3. Configurar e-mail
echo 4. Clonando uma Branch
echo 4. Ver configuracoes atuais
echo 5. Sair
echo ================================
set /p opcao=Escolha uma opcao: 

if "%opcao%"=="1" goto INSTALAR
if "%opcao%"=="2" goto USER
if "%opcao%"=="3" goto EMAIL
if "%opcao%"=="4" goto LISTAR
if "%opcao%"=="5" exit
goto MENU

:INSTALAR
cls
echo Baixando instalador do Git...
rem Necessita do wget no Windows (pode usar curl se preferir)
wget https://github.com/git-for-windows/git/releases/download/v2.47.0.windows.1/Git-2.47.0-64-bit.exe -O git-setup.exe
echo Instalando Git...
start /wait git-setup.exe /VERYSILENT /NORESTART
echo Git instalado com sucesso!
pause
goto MENU

:USER
cls
set /p gituser=Digite seu nome de usuario do Git: 
git config --global user.name "%gituser%"
echo Usuario configurado!
pause
goto MENU

:EMAIL
cls
set /p gitemail=Digite seu e-mail do Git: 
git config --global user.email "%gitemail%"
echo E-mail configurado!
pause
goto MENU

:LISTAR
cls
echo Configuracoes atuais do Git:
git config --list
pause
goto MENU
