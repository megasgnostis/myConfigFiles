#!/bin/bash

configFilesPath="$HOME/.config"

for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  rm $HOME/$file
  mv $HOME/configBackups/$file $HOME
done

for file in {i3blocks,i3,ranger}
do
  rm $configFilesPath/$file
  mv $HOME/configBackups/$file $configFilesPath/$file 
done
rmdir $HOME/configBackups
