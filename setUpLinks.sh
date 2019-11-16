#!/bin/bash

stunningConfigsPath="$HOME/Desktop/2_Github/stunningConfigFiles"
configFilesPath="$HOME/.config"
dirFromFileScript="$stunningConfigsPath/dirFromFile.sh"

cd $HOME
mkdir configBackups
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  mv $file configBackups/$file
  dir=$($dirFromFileScript "$file")
  ln -s $stunningConfigsPath/$dir/$file
done

cd $configFilesPath
for file in {i3blocks,i3,ranger}
do
  mv $file $HOME/configBackups/$file
  ln -s $stunningConfigsPath/$file
done
