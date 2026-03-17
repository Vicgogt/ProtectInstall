#!/bin/bash

# Colores
verde="\e[32m"
rojo="\e[31m"
reset="\e[0m"

echo -e "${verde}Instalando Vicgo Panel...${reset}"

# Actualizar paquetes
apt update -y && apt upgrade -y

# Instalar dependencias básicas
apt install -y curl wget

# Descargar scripts
echo -e "${verde}Descargando archivos...${reset}"

wget -q https://raw.githubusercontent.com/Vicgogt/ProtectInstall/main/menu -O /usr/local/bin/menu
wget -q https://raw.githubusercontent.com/Vicgogt/ProtectInstall/main/vicgoscript -O /usr/local/bin/vicgoscript

# Dar permisos
chmod +x /usr/local/bin/menu
chmod +x /usr/local/bin/vicgoscript

# Crear panel
echo -e "${verde}Creando panel...${reset}"

cat << 'EOF' > /usr/local/bin/panel
#!/bin/bash

while true; do
    clear
    echo "=================================="
    echo "        VICGO PANEL 🔥"
    echo "=================================="
    echo "1) Abrir Menu"
    echo "2) Ejecutar VicgoScript"
    echo "3) Salir"
    echo "=================================="
    read -p "Selecciona una opción: " op

    case $op in
        1)
            menu
            ;;
        2)
            vicgoscript
            ;;
        3)
            echo "Saliendo..."
            sleep 1
            exit
            ;;
        *)
            echo "Opción inválida"
            sleep 1
            ;;
    esac
done
EOF

# Permisos panel
chmod +x /usr/local/bin/panel

# Mensaje final
echo -e "${verde}Instalación completada ✔️${reset}"
echo -e "${verde}Escribe: panel${reset}"
