#!/bin/bash

echo -e "\n\nFIGYELEM-FIGYELEM-FIGYELEM!\nNe felejtsd el manuálisan kezelni:\n* \e[38;5;10mnvidia-detect\e[0m MAJD \e[38;5;10mlinux-headers-amd64\e[0m MAJD \e[38;5;10mnvidia-driver firmware-misc-nonfree\e[0m\n* Steam (\e[38;5;10mdpkg --add-architecture i386\e[0m előtte)\n\n"

sudo apt update && sudo apt -y install nala # Frissíti a csomaglistát és telepíti a nala csomagkezelőt

# Ellenőrizzük a Debian verziót
debian_version=$(lsb_release -cs)

# Ha a verzió Trixie vagy újabb, akkor fastfetch, egyébként neofetch
if [[ "$debian_version" == "trixie" ]]; then
    sysinfo_tool="fastfetch"
else
    sysinfo_tool="neofetch"
fi

pkgnames=(
    vlc                 # VLC médialejátszó, különféle formátumokat támogat
    powerdevil          # KDE energia kezelő, segít az akkumulátor és energia beállítások kezelésében
    power-profiles-daemon # Energiaprofilok kezelése, segít optimalizálni a rendszer teljesítményét és fogyasztását
    timeshift           # Rendszer visszaállító eszköz, hasznos rendszermentések készítéséhez
    rdfind              # Duplikált fájlok keresése és eltávolítása a rendszeren
    zsh                 # Z shell, egy erőteljes parancssori héj
    "$sysinfo_tool"     # Rendszerinformációk megjelenítése (fastfetch vagy neofetch a Debian verziótól függően)
    krename             # Tömeges fájlátnevező eszköz
    partitionmanager    # KDE partíciókezelő, segít a lemezpartíciók kezelésében
    filelight           # Lemezhasználat elemző, vizuálisan megjeleníti a fájlok és könyvtárak méretét
    synaptic            # Grafikus csomagkezelő, egyszerűbbé teszi a csomagok telepítését és eltávolítását
    inxi                # Rendszerinformációs eszköz
    kodi                # Médialejátszó és szórakoztató központ
    kwin-addons         # KDE ablakkezelő kiegészítések
    gamemode            # Rendszer teljesítményének optimalizálása játék közben
    plasma-gamemode     # Integráció a GameMode-dal KDE Plasma alatt
    lutris              # Nyílt forráskódú játékkezelő
    qbittorrent         # Bittorrent kliens
    neochat             # KDE Matrix kliens
    thunderbird         # E-mail kliens
)

sudo nala install -y "${pkgnames[@]}"
