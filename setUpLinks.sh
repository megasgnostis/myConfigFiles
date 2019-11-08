#!/bin/bash

stunningConfigsPath="$HOME/Desktop/stunningConfigFiles"
configFilesPath="$HOME/.config"
backupsPath="$HOME/configBackups"

mkdir $backupsPath
cd $HOME
file=".vimrc"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/vim/$file
file=".bashrc"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/bash/$file
file=".bash_aliases"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/bash/$file
file=".Xresources"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/urxvt/$file
file=".urxvt"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/urxvt/$file

cd $configFilesPath
file="i3blocks"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/$file
file="i3"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/$file
file="ranger"
mv $file $backupsPath/$file
ln -s $stunningConfigsPath/$file
