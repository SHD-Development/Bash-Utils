if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

clear

UpdatePterodactylPanel(){
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/Pterodactyl-Panel-Update-Script/main/updatepanel.sh)
}
UpdatePterodactylWings(){
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/Pterodactyl-Wings-Update-Script/main/update.sh)
}
UpdatePterodactyl(){
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/Pterodactyl-Panel-Update-Script/main/updatepanel.sh)
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/Pterodactyl-Wings-Update-Script/main/update.sh)
}
FreeTheMemory(){
    bash <(curl https://raw.githubusercontent.com/owen0924-owen/free-the-memory-script/main/free.sh)
}

echo "Copyright (c) 2023 SHD Cloud | owen0924"
echo "Choose an option down below to execute specify action."
echo ""
echo "Discord: owen0924#9262"
echo "Website: https://shdhost.xyz/"
echo ""
echo "[1] Free The Memory"
echo "[2] Update Pterodactyl (Both Panel & Wings)"
echo "[3] Update Pterodactyl Panel"
echo "[4] Update Pterodactyl Wings"
echo "[5] Exit"

read -p "Please enter a number: " choice
if [ $choice == "1" ]
    then
    FreeTheMemory
fi
if [ $choice == "2" ]
    then
    UpdatePterodactyl
fi
if [ $choice == "3" ]
    then
    UpdatePterodactylPanel
fi
if [ $choice == "4" ]
    then
    UpdatePterodactylWings
fi
if [ $choice == "5" ]
    then
    exit
fi
