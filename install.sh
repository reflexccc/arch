sudo pacman -S alacritty galculator vlc vim yay neovim neofetch btop bat zsh zsh-autocomplete pamixer teams-for-linux auto-cpufreq betterbird-bin obsidian wofi vscodium dolphin lolcat cowsay flameshot spotify zoxide waybar starship

cd ~/Downloads/

echo "Token: "
read token

git clone https://$token@github.com/reflexccc/Obsidian_Auto.git

mkdir ~/Dateien
mkdir ~/Media
mkdir ~/Scripts
mkdir ~/Ordner
mkdir ~/Rest

mv Obsidian_Auto/ ~/Dateien/
cd arch/
mv Themes ~/Dateien/

cd ~/.config/
git clone https://github.com/techkek/wofi-bluetooth/
cd ~/Downloads/arch/

mv wofi-bluetooth ~/.config/wofi-bluetooth/
mv wofi-bluetooth-config ~/.config/wofi-bluetooth/

mv hyprland_config ~/.config/hypr/hyprland.conf

mkdir ~/.config/waybar/
mv waybar_config ~/.config/waybar/config
mv waybar_style ~/.config/waybar/style.css

mkdir ~/.config/wofi/
mv wofi_colors ~/.config/wofi/colors
mv wofi_config ~/.config/wofi/config
mv wofi_style ~/.config/wofi/style.css

mv fish_config ~/.config/fish/config.fish

mv alacritty_config ~/.config/alacritty/alacritty.toml

mv a_foggy_forest_with_trees_and_bushes.png ~/Media/
mv bg_1.jpg ~/Media/

mkdir ~/.config/dunst/
mv dunst_config ~/.config/dunst/dunstrc

echo "FERTIG!!!!"
