#!/bin/bash

configFilesPath="$HOME/.config"

mkdir $HOME/configBackups
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  mv $HOME/$file $HOME/configBackups
  ln -s $PWD/$($PWD/dirFromFile.sh $file)/$file $HOME
done

for file in {i3blocks,i3,ranger}
do
  mv $configFilesPath/$file $HOME/configBackups
  ln -s $PWD/$file $configFilesPath
done
