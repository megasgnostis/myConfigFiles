#!/bin/bash

configBackupsPath="$HOME/.configBackups"
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  rm $HOME/$file
  mv $configBackupsPath/$file $HOME
done
configFilesPath="$HOME/.config"
for file in {i3blocks,i3,ranger}
do
  rm $configFilesPath/$file
  mv $configBackupsPath/$file $configFilesPath
done
rmdir $configBackupsPath
