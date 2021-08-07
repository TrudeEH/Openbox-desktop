#! /bin/bash

# Install required packages:

# APT packages
sudo apt install -y openbox nitrogen plank xterm g++ make 2>/dev/null
# PACMAN packages
sudo pacman -S -y openbox nitrogen plank xterm g++ pycom make 2>/dev/null
# Install compton/pyCom
sudo apt install -y compton 2>/dev/null
sudo apt install -y pycom 2>/dev/null

# Install MenuMaker
cd menumaker
./configure && make
sudo make install
cd ..

# -----------------------------------
# Configure Openbox
mkdir ~/.config/openbox 2>/dev/null
cp ./openbox/autostart ~/.config/openbox 2>/dev/null

# Generate context menu
mmaker openbox -t xterm -f 

# Install Tela Circle Icon Theme
git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
cd Tela-circle-icon-theme ; ./install.sh ; cd .. ; rm -rf Tela-circle-icon-theme
gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-dark' # Apply the theme

# Install Frost Plank Theme
sudo cp ./frost-plank-theme/dock.theme /usr/share/plank/themes/Default/
