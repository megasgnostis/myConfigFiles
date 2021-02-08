#!/bin/bash

backups="$HOME/.configBackups"
# files
for file in .vimrc .bashrc .bash_aliases .Xresources .urxvt
do
  rm $HOME/$file

  mv $backups/$file $HOME
done

# dirs
configs="$HOME/.config"
for dir in i3blocks i3 ranger
do
  rm $configs/$dir

  mv $backups/$dir $configs
done

rmdir $backups
