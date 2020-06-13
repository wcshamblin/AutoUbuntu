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
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
mv $DIR/zshrc ~/.zshrc
mv $DIR/Xresources ~/.Xresources
mkdir ~/.urxvt/themes/
mv $DIR/urxvt/themes/* ~/.urxvt/themes/
sudo cpan AnyEvent Linux::FD common::sense

