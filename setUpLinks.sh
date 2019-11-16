#!/bin/bash

stunningConfigsPath="$HOME/Desktop/2_Github/stunningConfigFiles"
configFilesPath="$HOME/.config"
backupsPath="$HOME/configBackups"
dirFromFileScript="$stunningConfigsPath/dirFromFile.sh"

mkdir $backupsPath
cd $HOME
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  mv $file $backupsPath/$file
  dir=$($dirFromFileScript "$file")
  ln -s $stunningConfigsPath/$dir/$file
done

cd $configFilesPath
for file in {i3blocks,i3,ranger}
do
  mv $file $backupsPath/$file
  ln -s $stunningConfigsPath/$file
done
