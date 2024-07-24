#!/bin/bash

# Nyelv kiválasztása
echo "Válasszon nyelvet / Choose language:"
echo "1) Magyar (alapértelmezett)"
echo "2) English"
read -p "Válassz egy opciót / Choose an option [1/2]: " language_choice

# Alapértelmezett nyelv beállítása, ha nincs megadva
if [[ -z "$language_choice" ]]; then
    language_choice=1
fi

# Nyelv beállítása és figyelmeztetés kiírása
if [[ "$language_choice" -eq 2 ]]; then
    # Angol nyelvű szövegek
    echo -e "\n\nATTENTION-ATTENTION-ATTENTION!\nDon't forget to handle manually:\n* \e[38;5;10mnvidia-detect\e[0m THEN \e[38;5;10mlinux-headers-amd64\e[0m THEN \e[38;5;10mnvidia-driver firmware-misc-nonfree\e[0m\n* Steam (\e[38;5;10mdpkg --add-architecture i386\e[0m before)\n\n"
    read -p "Press Enter to continue..."
else
    # Magyar nyelvű szövegek
    echo -e "\n\nFIGYELEM-FIGYELEM-FIGYELEM!\nNe felejtsd el manuálisan kezelni:\n* \e[38;5;10mnvidia-detect\e[0m MAJD \e[38;5;10mlinux-headers-amd64\e[0m MAJD \e[38;5;10mnvidia-driver firmware-misc-nonfree\e[0m\n* Steam (\e[38;5;10mdpkg --add-architecture i386\e[0m előtte)\n\n"
    read -p "Nyomj meg egy Entert a folytatáshoz..."
fi

sudo apt update && sudo apt -y install nala # Frissíti a csomaglistát és telepíti a nala csomagkezelőt

# Ellenőrizzük a Debian verziót
debian_version=$(lsb_release -cs)

# Ha a verzió Trixie vagy újabb, akkor fastfetch, egyébként neofetch
if [[ "$debian_version" == "trixie" ]]; then
    sysinfo_tool="fastfetch"
    lutris_available=true
else
    sysinfo_tool="neofetch"
    lutris_available=false
fi

pkgnames=(
    bash-completion
    vlc
    powerdevil
    power-profiles-daemon
    timeshift
    rdfind
    zsh
    "$sysinfo_tool"
    krename
    partitionmanager
    filelight
    synaptic
    inxi
    kodi
    kwin-addons
    gamemode
    plasma-gamemode
    qbittorrent
    neochat
    thunderbird
)

# Csak akkor adjuk hozzá a lutris-t, ha trixie verzión vagyunk
if [[ "$lutris_available" == true ]]; then
    pkgnames+=(lutris) # Nyílt forráskódú játékkezelő
fi

sudo nala install -y "${pkgnames[@]}"
