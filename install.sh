sudo pacman -S kitty
# inst alacritty

sudo pacman -S nitrogen galculator vlc

sudo pacman -S neovim rofi polybar picom chromium galculator neofetch btop bat cmatrix flatpak

# flatpaks
flatpak install flathub com.discordapp.Discord md.obsidian.Obsidian org.onlyoffice.desktopeditors com.github.IsmaelMartinez.teams_for_linux

mv ~/arch/bashrc ~/.bashrc
mv ~/picom.conf ~/.config/herbstluftwm
mv ~/autostart ~/.config/herbstluftwm

# rofi
cd ~/.config/herbstluftwm

git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

cd ..
sudo rm -r rofi
cd ~/.config
mv -f rofi ~/.config/herbstluftwm

cd rofi/colors
rm onedark.rasi
mv ~/arch/onedark.rasi ~/.config/herbstluftwm/rofi/colors
cd ~/.config/herbstluftwm/rofi/launchers/type-2
rm launcher.sh /shared/colors.rasi
mv ~/arch/launcher.sh ~/.config/herbstluftwm/rofi/launchers/type-2 && mv ~/arch/colors.rasi ~/.config/herbstluftwm/rofi/launchers/type-2/shared
chmod +x ~/.config/herbstluftwm/rofi/launchers/type-2/launcher.sh


