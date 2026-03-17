#!/bin/bash

echo "Instalando VicgoScript..."

# Instalar dependencias básicas
apt update -y
apt install -y curl wget

# Descargar script principal
wget -q https://raw.githubusercontent.com/Vicgogt/ProtectInstall/main/menu -O /usr/local/bin/vicgosh

# Dar permisos
chmod +x /usr/local/bin/vicgosh

# Mensaje final
echo "Instalación completada ✔️"
echo "Usa el comando: vicgosh"
