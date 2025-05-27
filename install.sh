sudo pacman -S alacritty galculator vlc vim yay neovim neofetch btop bat zsh zsh-autocomplete pamixer teams-for-linux auto-cpufreq betterbird-bin obsidian wofi vscodium dolphin lolcat cowsay flameshot spotify zoxide starship

cd ~/Downloads

echo "Token: "
read token

git clone https://$token@github.com/reflexccc/Obsidian_Auto.git
git clone https://$token@github.com/reflexccc/arch.git 

cd arch/

mv hyprland_config ~/.config/hypr/hyprland.conf

mkdir ~/.config/waybar/
mv waybar_config ~/.config/waybar/config
mv waybar_style ~/.config/waybar/style.css

mkdir ~/.config/wofi/
mv wofi_colors ~/.config/wofi/colors
mv wofi_config ~/.config/wofi/config
mv wofi_style ~/.config/wofi/style.css

mv fish_config ~/.config/fish/config.fish

mv alacritty_config ~/.config/alacritty.toml

mv a_foggy_forest_with_trees_and_bushes.png ~/Bilder/
