#!/bin/bash

# Telegram
wget https://telegram.org/dl/desktop/linux
mv ./?* telegram
tar xf telegram
rm telegram

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y

# Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update; sudo apt install git -y

# Toolbox
mkdir toolbox
cd toolbox
wget https://www.jetbrains.com/toolbox-app/download/download-thanks.html?platform=linux
tar xfz ./jetbrains*.gz
rm ./jet*.gz
cd ./jet*
./?*
cd ..
cd ..
rm -r toolbox

# gcc/g++
sudo apt install gcc g++ -y

# python3
sudo apt install python3-pip python3-venv -y

# Docker
sudo apt install docker docker-compose -y


# Sublime Text 3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y