#!/bin/bash
# Instalador Netsys.sh – ejecutable con 'menu'

# URL de tu script
URL="https://raw.githubusercontent.com/Vicgogt/ProtectInstall/refs/heads/main/Netsys.sh"
DEST="/usr/local/bin/menu"

echo "[*] Descargando Netsys.sh..."
wget -q -O "$DEST" "$URL"

if [ $? -ne 0 ]; then
    echo "[ERROR] No se pudo descargar Netsys.sh"
    exit 1
fi

chmod +x "$DEST"

echo "[OK] Instalación completada."
echo "Ahora puedes ejecutar el script con: menu"
