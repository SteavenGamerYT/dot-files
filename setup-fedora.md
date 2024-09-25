# Base Packages
```sh
dnf install arch-install-scripts
dnf --installroot=/mnt --releasever=41 --setopt=exclude=firewalld,plymouth-core-libs,plymouth-scripts,plymouth,selinux,selinux-policy,selinux-policy-targeted groupinstall core
dnf --installroot=/mnt --releasever=41 install glibc-langpack-en glibc-langpack-ar
genfstab -U /mnt > /mnt/etc/fstab
arch-chroot /mnt
dnf install efi-filesystem efibootmgr
dnf copr enable bieszczaders/kernel-cachyos
dnf install kernel-cachyos kernel-cachyos-devel-matched kernel-cachyos-modules
systemctl enable fstrim.timer
```

# efibootmgr
```sh
sudo rm -rf /boot/efi

sudo efibootmgr --create \
 --disk /dev/vda --part 1 \
 --label "Fedora" \
 --loader /vmlinuz-linux-cachyos \
 --unicode 'root=PARTUUID=4fbd514a-c6fd-42f3-bf6e-3ac7f30733fc rw splash quiet amd_iommu=on iommu=pt pcie_acs_override=downstream,multifunction pcie_port_pm=off video=1920x1080 initrd=\initramfs-6.11.0-cb3.0.fc41.x86_64.img'
```

# Asus Motherboard and Ryzen cpu Drivers
```sh
sudo pacman -S it87-dkms-git
paru -S zenergy-dkms-git
```

# Start Packages
`sudo pacman -S bash-completion kitty`

# Time/Date/Clock
```sh
sudo ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime
sudo hwclock --systohc
sudo systemctl enable systemd-timesyncd
```

# Language
```sh
echo 'LANG=en_US.UTF-8' | sudo tee /etc/locale.conf
sudo sed -i 's/^#\(ar_EG.UTF-8 UTF-8\)/\1/' /etc/locale.gen
sudo sed -i 's/^#\(en_US.UTF-8 UTF-8\)/\1/' /etc/locale.gen
sudo locale-gen
```

# PC Name
`echo "Omar-PC" | sudo tee /etc/hostname`

# Create User
```sh
sudo useradd -m -G wheel -s /usr/bin/bash omarhanykasban
sudo passwd root
sudo passwd omarhanykasban
```

# Audio
`sudo pacman -S pipewire pipewire-jack pipewire-alsa pipewire-pulse wireplumber alsa-utils pamixer playerctl pavucontrol helvum lib32-pipewire lib32-pipewire-jack `

# Gpu Drivers
Nvidia: `sudo pacman -S linux-cachyos-nvidia-open nvidia-utils opencl-nvidia nvidia-settings libva-nvidia-driver egl-wayland lib32-nvidia-utils lib32-opencl-nvidia`
Intel: `sudo pacman -S mesa vulkan-intel intel-media-driver intel-compute-runtime lib32-mesa lib32-vulkan-intel`
Amd: `sudo pacman -S mesa mesa-vdpau vulkan-radeon libva-mesa-driver rocm-opencl-runtime lib32-mesa lib32-mesa-vdpau lib32-libva-mesa-driver lib32-vulkan-radeon`

# Display Server
Xorg: `sudo pacman -S xorg xorg-server xorg-apps xorg-xinit`
Wayland: `sudo pacman -S wayland xorg-xwayland qt5-wayland qt6-wayland wayland-protocols lib32-wayland`

# Network
```sh
sudo pacman -S networkmanager network-manager-applet
sudo systemctl enable NetworkManager
```

# Printer
```sh
sudo pacman -S cups foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds hplip epson-inkjet-printer-escpr epson-inkjet-printer-escpr2 system-config-printer
sudo systemctl enable cups
```

# Disks
`sudo pacman -S gnome-disk-utility gparted dosfstools btrfs-progs ntfs-3g exfatprogs mtools`

# preload
```sh
sudo pacman -S preload
sudo systemctl enable preload
```

# Eco System
```sh
sudo pacman -S openssh syncthing syncthingtray-qt6
sudo systemctl enable sshd
sudo systemctl enable syncthing@omarhanykasban
```

# Window Manager and its apps
i3: `sudo pacman -S i3-wm greetd polybar rofi polkit-gnome nemo nemo-fileroller mpv xdg-desktop-portal xdg-desktop-portal-gtk kwallet kwallet-pam kwallet5 kwalletmanager picom dunst numlockx feh flameshot xdotool timeshift`
Bspwm: `sudo pacman -S bspwm sxhkd greetd polybar rofi polkit-gnome nemo nemo-fileroller mpv xdg-desktop-portal xdg-desktop-portal-gtk kwallet kwallet-pam kwallet5 kwalletmanager picom dunst numlockx feh flameshot xdotool timeshift`
Sway: `sudo pacman -S sway swayidle swaylock swaync greetd waybar rofi-wayland polkit-gnome nemo nemo-fileroller mpv xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-wlr kwallet kwallet-pam kwallet5 kwalletmanager wlsunset`

# Theme
```sh
sudo pacman -S nordic-theme-git papirus-icon-theme papirus-folders lxappearance qt5ct qt6ct kvantum kvantum-qt5
paru -S whitesur-cursor-theme-git
```

# Fonts
`sudo pacman -S noto-fonts noto-fonts-ar noto-fonts-cjk noto-fonts-emoji ttf-croscore ttf-roboto ttf-roboto-mono ttf-roboto-mono-nerd`

# Qemu/KVM 
```sh
sudo pacman -S qemu-desktop libvirt edk2-ovmf virt-manager dnsmasq
sudo sed -i 's/#unix_sock_group = "libvirt"/unix_sock_group = "libvirt"/g' /etc/libvirt/libvirtd.conf
sudo sed -i 's/#unix_sock_rw_perms = "0770"/unix_sock_rw_perms = "0770"/g' /etc/libvirt/libvirtd.conf
sudo systemctl enable libvirtd
sudo virsh net-autostart default
sudo virsh net-start default
```

# Games and its utitls
```sh
sudo pacman -S proton-ge-custom wine-staging wine-mono wine-gecko \
mangohud lib32-mangohud gamemode lib32-gamemode gamescope vulkan-tools protontricks winetricks protonplus \
steam lutris heroic-games-launcher-bin \
duckstation-git rpcs3-git ryujinx dolphin-emu pcsx2-git \
minecraft-launcher prismlauncher lunar-client jre-openjdk jre21-openjdk jre17-openjdk jre8-openjdk 
paru -S cemu-bin
```

# Terminal Apps
`sudo pacman -S starship zoxide fastfetch trash-cli bat speedtest-cli neovim vim nano unzip unrar neofetch hyfetch xclip lolcat eza github-cli topgrade`

# Apps that i use
```sh
pacman -S nemo nemo-fileroller \
bitwarden \
discord whatsie-git whatsie-git element-desktop \
visual-studio-code-bin github-desktop \
libreoffice-fresh okular kcalc kate phonon-qt6-mpv \
obs-studio-stable obs-vkcapture lib32-obs-vkcapture gstreamer-vaapi obs-gstreamer \
gimp kdenlive mediainfo mediainfo-gui \
qbittorrent freedownloadmanager
firefox vlc audacious
paru -S nemo-mediainfo-tab \
ente-auth-bin \
obs-pipewire-audio-capture-bin
```
# Add user to more groups
`sudo usermod -a -G wheel,audio,disk,input,kvm,lp,render,storage,uucp,video,gamemode,libvirt,power,flatpak omarhanykasban`

# Copy desktop files
```sh
cp /usr/share/applications/rpcs3.desktop /home/omarhanykasban/.local/share/applications/rpcs3.desktop
cp /usr/share/applications/ryujinx.desktop /home/omarhanykasban/.local/share/applications/ryujinx.desktop
cp /usr/share/applications/duckstation.desktop /home/omarhanykasban/.local/share/applications/duckstation.desktop
cp /usr/share/applications/info.cemu.Cemu.desktop /home/omarhanykasban/.local/share/applications/info.cemu.Cemu.desktop
cp /usr/share/applications/pcsx2.desktop /home/omarhanykasban/.local/share/applications/pcsx2.desktop
cp /usr/share/applications/dolphin-emu.desktop /home/omarhanykasban/.local/share/applications/dolphin-emu.desktop
```
