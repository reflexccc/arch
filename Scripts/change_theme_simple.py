import os, shutil, subprocess

STANDARD = "/home/vinzenz/"
PATH = STANDARD+"Dateien/Themes/"
DIRS = [".config/hypr/hyprland.conf", ".config/alacritty/alacritty.toml", ".config/wofi/style.css", ".config/waybar/style.css", "Media/bg.jpg", ]

def main():
  theme_num = input("Welches Theme?\n")
  i = 0
  
  for file in os.listdir(f"{PATH}Theme_{theme_num}/"):
    start = PATH+"Theme_"+theme_num+"/"+file
    dest = STANDARD+DIRS[i]

    shutil.copyfile(start, dest)
    i += 1

  print(f"{theme_num} aktiviert")
  subprocess.run(["sudo", "pkill", "-kill", "-u", "vinzenz"])
  #subprocess.run(["killall", "waybar"])
  #subprocess.run(["waybar"])
  #subprocess.run(["swaybg", "-m", "fill", "-i", "~/Media/bg.jpg"])

main()
