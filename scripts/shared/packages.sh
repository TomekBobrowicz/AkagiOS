#!/bin/bash

set -ouex pipefail

rpm --import https://packages.microsoft.com/keys/microsoft.asc

echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | tee /etc/yum.repos.d/vscode.repo

wget https://download.opensuse.org/repositories/home:paul4us/Fedora_Rawhide/home:paul4us.repo -P /etc/yum.repos.d
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d

dnf5 -y copr enable peterwu/rendezvous
dnf5 -y copr enable solopasha/hyprland
dnf5 -y copr enable tofik/nwg-shell
dnf5 -y copr enable erikreider/SwayNotificationCenter
dnf5 -y copr enable varlad/yazi

dnf -y install bibata-cursor-themes papirus-icon-theme libappstream-glib virt-manager virt-install libvirt-daemon-kvm qemu-kvm virt-viewer libguestfs-tools python3-libguestfs virt-top nu code google-chrome-stable hyprland hyprpaper hyprlock hypridle hyprland-qtutils xdg-desktop-portal-hyprland kitty  
dnf -y install cliphist nwg-look nwg-dock-hyprland SwayNotificationCenter yazi neovim btop grim slurp waybar rofi-wayland qt6ct nm-connection-editor network-manager-applet pavucontrol papirus-icon-theme-dark wlogoutfontawesome-6-free-fonts NetworkManager-tui brightnessctl tumbler   

pip install hyprshade
pip install pywal
pip install screeninfo
pip install waypaper

systemctl enable podman.socket libvirtd