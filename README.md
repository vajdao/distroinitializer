# Linux distribution initializer for KDE Plasma only

Tool to boost start your Linuxing experience out of the box.

$${\color{red}**This \space program \space is \space intended \space for \space KDE \space Plasma \space use \space only!!!**}$$

## Which distros are supported

Debian will be the only supported distro, I have no plans to implement the others

### How to use

clone, then: `chmod +x init.sh && ./init.sh` and follow the interactive prompt.
Currently my native language Hungarian and the common English are supported.

$${\color{red}**This \space program \space is \space intended \space for \space KDE \space Plasma \space use \space only!!!**}$$

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


$${\color{red}**This \space program \space is \space intended \space for \space KDE \space Plasma \space use \space only!!!**}$$

### TODO (Tasks for myself to improve project):

* Add more distro support
* Add GUI for both GTK/Qt for better user experience
