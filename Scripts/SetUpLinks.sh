#!/bin/bash

backups="$HOME/.configBackups"

mkdir $backups

cd ../Files

stunningConfigs="$(pwd)"

getIntermediateDirOfFile () {
  case $1 in
    .vimrc) echo "vim";;
    .bashrc) echo "bash";;
    .bash_aliases) echo "bash";;
    .Xresources) echo "urxvt";;
    .urxvt) echo "urxvt";;
    *) echo "wasn't supposed to happen. got this -> $1"; exit
  esac
}

# files 
for file in .vimrc .bashrc .bash_aliases .Xresources .urxvt
do
  mv -f $HOME/$file $backups

  ln -s $stunningConfigs/$(getIntermediateDirOfFile $file)/$file $HOME
done

source "$HOME/.bashrc"

configs="$HOME/.config"

# dirs
for dir in i3blocks i3 ranger
do
  mv -f $configs/$dir $backups

  ln -s $stunningConfigs/$dir $configs/$dir
done
