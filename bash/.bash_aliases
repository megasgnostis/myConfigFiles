# general commands in short
alias c='cd'
alias v='vim'
alias md='mkdir'
alias sv='sudo vim'
alias m='make'
alias mc='make clean'
alias sai='sudo apt install'

# edit particular file
alias vb='vim ~/.bashrc'
alias vba='vim ~/.bash_aliases'
alias vv='vim ~/.vimrc'
alias vi3='vim ~/.config/i3/config'
alias vx='vim ~/.Xresources'

# open particular file 
alias vcp='xdg-open &>/dev/null ~/Dropbox/2_Hobbies/1_Prog/3_Files/2_vimCheatSheet.png &'

# source 
alias sb='source ~/.bashrc'
alias sx='xrdb ~/.Xresources'

# run ranger
alias rangerFromScript='SHELL=~/Desktop/stunningConfigFiles/ranger/ranger.sh ranger'
alias r='rangerFromScript --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias sr='sudo ranger'
alias rn='rangerFromScript ~/Dropbox/1_Uni/1_Now/ --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rd='rangerFromScript ~/Downloads --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rdr='rangerFromScript ~/Dropbox --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rde='rangerFromScript ~/Desktop --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rcf='rangerFromScript ~/Desktop/myConfigFiles --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rp='rangerFromScript ~/Dropbox/2_Hobbies/1_Prog  --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# run my executables
alias g='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/2_Grades/1_showGrades/showGrades'
alias ag='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/2_Grades/2_addGrade/addGrade' 
alias e='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/1_showExercises/showExercises'
alias ae='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/2_addExercise/addExercise'
alias re='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/3_removeExercise/removeExercise'
alias toDo='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/2_addExercise/addExercise'

# git
alias ga='git add .'
alias gc='git commit -m "m"'
alias gps='git push'
alias gpl='git pull'
alias gcln='git clone'

# ssh
alias parlab='ssh parlab12@orion.cslab.ece.ntua.gr'
alias parlabfs='sshfs parlab12@orion.cslab.ece.ntua.gr:/home/parallel/parlab12/ ~/Desktop/parlab'

# gnome terminal
alias gnter='gnome-terminal'

# ls aliases
alias l='ls -l'
alias la='ls -A'
