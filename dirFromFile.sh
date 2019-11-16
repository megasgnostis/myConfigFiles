#!/bin/bash

case $1 in
	.vimrc) echo "vim";;
	.bashrc) echo "bash";;
	.bash_aliases) echo "bash";;
	.Xresources) echo "urxvt";;
	.urxvt) echo "urxvt";;
	*) echo "ok"
esac
