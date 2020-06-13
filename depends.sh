#!/bin/sh
DIR=`dirname "$0"`
sudo apt-get install build-essential -y
sudo apt-get install net-tools -y
sudo apt-get install vim -y
sudo apt-get install zsh -y
sudo apt-get install curl -y
sudo apt-get install git -y
sudo apt-get install rxvt -y
sudo apt-get install plasma-desktop -y
sudo apt-get install apt-transport-https -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
mv $DIR/zsh/zshrc ~/.zshrc
mv $DIR/urxvt/Xresources ~/.Xresources
mkdir ~/.urxvt/themes/
mkdir ~/.urxvt/ext/
mv $DIR/urxvt/themes/* ~/.urxvt/themes/
sudo cpan AnyEvent Linux::FD common::sense
mv $DIR/urxvt/config/* ~/.urxvt/ext/
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y
