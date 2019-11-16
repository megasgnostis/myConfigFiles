#!/bin/bash

stunningConfigsPath="$HOME/Desktop/2_Github/stunningConfigFiles"
configFilesPath="$HOME/.config"
dirFromFileScript="$stunningConfigsPath/dirFromFile.sh"

mkdir $HOME/configBackups
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  mv $HOME/$file $HOME/configBackups/$file
  ln -s $stunningConfigsPath/$($dirFromFileScript "$file")/$file $HOME/$file
done

for file in {i3blocks,i3,ranger}
do
  mv $configFilesPath/$file $HOME/configBackups/$file
  ln -s $stunningConfigsPath/$file $configFilesPath
done
