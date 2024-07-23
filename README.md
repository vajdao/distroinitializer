# Linux distribution initializer

Tool to boost start your Linuxing experience out of the box!

## Currently supported distro

* Debian

_...more (base ones such as openSUSE, Fedora, Arch) to be added soon_

### How to use

clone, then: `chmod +x init.sh && ./init.sh` and follow the interactive prompt.
Currently my native language Hungarian and the common English are supported.

### What it does

Initially installs `nala` then installs the following packages in one go via **nala**:

    vlc
    powerdevil
    power-profiles-daemon
    timeshift
    rdfind
    zsh
    neofetch (pre Trixie) or fastfetch (Trixie and up)
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
    lutris (only Trixie and up)

### TODO (Tasks for myself to improve project):

* Add more distro support
* Add GUI for both GTK/Qt for better user experience
