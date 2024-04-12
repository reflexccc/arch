# install herbstluftwm
sudo pacman -S herbstluftwm
mkdir -p ~/.config/herbstluftwm

# install pikaur
# sudo pacman -S --needed base-devel git
# git clone https://aur.archlinux.org/pikaur.git
# cd pikaur
# makepkg -fsri

sudo pacman -S kitty
# inst alacritty

sudo pacman -S nitrogen
sudo pacman -S galculator
sudo pacman -S vlc

sudo pacman -S neovim rofi polybar picom chromium

sudo pacman -S btop bat cmatrix flatpak

# flatpaks
flatpak install flathub com.discordapp.Discord
flatpak install flathub md.obsidian.Obsidian

mv ~/arch/bashrc ~/.bashrc
mv ~/picom.conf ~/.config/herbstluftwm
mv ~/autostart ~/.config/herbstluftwm

cd ~/.config/herbstluftwm

git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
