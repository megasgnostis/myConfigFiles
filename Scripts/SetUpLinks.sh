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
    *) echo "wasn't supposed to happen. got this -> $1"; exit
  esac
}

# files 
for file in .vimrc .bashrc .bash_aliases 
do
  mv -f $HOME/$file $backups

  ln -s $stunningConfigs/$(getIntermediateDirOfFile $file)/$file $HOME
done

source "$HOME/.bashrc"

# ranger
configs="$HOME/.config"

mv -f $configs/ranger $backups

ln -s $stunningConfigs/ranger $configs/ranger
