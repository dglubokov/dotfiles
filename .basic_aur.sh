#!/bin/bash
cd ~/aur
git clone https://aur.archlinux.org/optimus-manager.git
git clone https://aur.archlinux.org/dwm.git
git clone https://aur.archlinux.org/st.git
git clone https://aur.archlinux.org/spotify-tui.git
cd ~/aur/optimus-manager
makepkg -si
cd ~/aur/dwm
makepkg -si
cd ~/aur/st
makepkg -si
cd ~/aur/spotify-tui
makepkg -si