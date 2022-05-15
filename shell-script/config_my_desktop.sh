#!/bin/bash

#Variáveis
ESTUDOS_GITHUB_REPO="https://github.com/Theallgusto01/Estudos.git"
URL_DOWNLOAD_VSCODE="https://az764295.vo.msecnd.net/stable/da15b6fd3ef856477bf6f4fb29ba1b7af717770d/code_1.67.1-1651841865_amd64.deb"
#Os comandos a seguir removem a trava usada pelo apt
#Problema comum do ubuntu
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock-frontend

sudo dpkg --add-architecture i386 #Adiciona suporte à arquitetura 32bits

sudo dpkg --configure -a #Comando complementar para reconfigurar apt

#Instalação dos Programas
sudo apt update && sudo apt upgrade -y
sudo apt install sl -y
sudo apt install git -y
sudo apt install wget -y
wget $URL_DOWNLOAD_VSCODE -O $HOME/Downloads/vscode.deb
sudo dpkg -i $HOME/Downloads/vscode.deb

#Criando Diretórios que geralmente utilizo
cd Documents
mkdir Livros Estudos Isos
git clone $ESTUDOS_GITHUB_REPO
