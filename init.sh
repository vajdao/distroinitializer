#!/bin/bash

echo -e "\n\nFIGYELEM-FIGYELEM-FIGYELEM!\nNe felejtsd el manuálisan kezelni:\n* \e[38;5;10mnvidia-detect\e[0m MAJD \e[38;5;10mlinux-headers-amd64\e[0m MAJD \e[38;5;10mnvidia-driver firmware-misc-nonfree\e[0m\n* Steam (\e[38;5;10mdpkg --add-architecture i386\e[0m előtte)\n\n"

sudo apt update && sudo apt -y install nala # Frissíti a csomaglistát és telepíti a nala csomagkezelőt

pkgnames=(
    vlc                 # VLC médialejátszó, különféle formátumokat támogat
    powerdevil          # KDE energia kezelő, segít az akkumulátor és energia beállítások kezelésében
    power-profiles-daemon # Energiaprofilok kezelése, segít optimalizálni a rendszer teljesítményét és fogyasztását
    timeshift           # Rendszer visszaállító eszköz, hasznos rendszermentések készítéséhez
    rdfind              # Duplikált fájlok keresése és eltávolítása a rendszeren
    zsh                 # Z shell, egy erőteljes parancssori héj
    fastfetch           # Rendszerinformációk gyors megjelenítése a terminálban
    nala                # Felhasználóbarát APT frontend, jobb csomagkezelés érdekében
    partitionmanager    # KDE partíciókezelő, segít a lemezpartíciók kezelésében
    filelight           # Lemezhasználat elemző, vizuálisan megjeleníti a fájlok és könyvtárak méretét
    synaptic            # Grafikus csomagkezelő, egyszerűbbé teszi a csomagok telepítését és eltávolítását
)

sudo nala install -y "${pkgnames[@]}"
