alias inst='sudo pacman -S'

# install herbstluftwm
inst herbstluftwm
mkdir -p ~/.config/herbstluftwm
cp /etc/xdg/herbstluftwm/autostart ~/.config/herbstluftwm/

# install pikaur
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri

inst kitty
# inst alacritty

inst nitrogen
inst galculator
inst vlc

inst nvim
inst rofi
inst polybar
inst picom
inst chromium

inst btop
inst bat
inst cmatrix

inst flatpak

# flatpaks
flatpak install flathub com.discordapp.Discord
flatpak install flathub md.obsidian.Obsidian

