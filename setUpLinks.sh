#!/bin/bash

configs="$HOME/.config"
configBackupsPath="$HOME/.configBackups"
stunningConfigs="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
script="$stunningConfigs/dirFromFile.sh"
mkdir $configBackupsPath
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  filePath="$HOME/$file"
  mv $filePath $configBackupsPath
  intermiateDir=$($script $file)
  ln -s $stunningConfigs/$intermiateDir/$file $HOME
done
for dir in {i3blocks,i3,ranger}
do
  mv $configs/$dir $configBackupsPath
  ln -s $stunningConfigs/$dir $configs/$dir
done
