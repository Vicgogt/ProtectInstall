#!/bin/bash

echo -e "${azul}Instalando VicgoScript..."

# Instalar dependencias básicas
apt update -y
apt install -y curl wget

# Descargar script principal
wget -q https://raw.githubusercontent.com/Vicgogt/ProtectInstall/main/menu -O /usr/local/bin/vicgosh

# Dar permisos
chmod +x /usr/local/bin/vicgosh

# Mensaje final
echo -e "${verde}Instalación completada!!! By. @Vicgogt ✔️${reset}"
echo -e "${rojo}Para Acceder Usa el comando: vicgosh${reset}"
