#!/bin/bash

stunningConfigsPath="$HOME/Desktop/2_Github/stunningConfigFiles"
configFilesPath="$HOME/.config"
backupsPath="$HOME/configBackups"

mkdir $backupsPath
cd $HOME
for file in {.vimrc,.bashrc,.bash_aliases,.Xresources,.urxvt}
do
  mv $file $backupsPath/$file
  if [ $file == .vimrc ]
  then
    dir="vim"
  fi
  if [ $file == .bashrc ] || [ $file == .bash_aliases ]
  then
    dir="bash"
  fi
  if [ $file == .Xresources  ] || [ $file == .urxvt ]
  then
    dir="urxvt"
  fi
  
  ln -s $stunningConfigsPath/$dir/$file
done

cd $configFilesPath
for file in {i3blocks,i3,ranger}
do
  mv $file $backupsPath/$file
  ln -s $stunningConfigsPath/$file
done
