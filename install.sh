#!/bin/bash
# Instalador Netsys.sh – listo para ejecutar

# URL de tu script
URL="https://raw.githubusercontent.com/Vicgogt/ProtectInstall/refs/heads/main/Netsys.sh"
DEST="/usr/local/bin/Netsys.sh"

echo "[*] Instalando dependencias necesarias..."
apt update -y
apt install -y wget curl figlet python3 > /dev/null 2>&1

echo "[*] Descargando Netsys.sh..."
wget -q -O "$DEST" "$URL"

if [ $? -ne 0 ]; then
    echo "[ERROR] No se pudo descargar Netsys.sh"
    exit 1
fi

chmod +x "$DEST"

echo "[OK] Instalación completada."
echo "Ahora puedes ejecutar el script con: menu$DEST"
