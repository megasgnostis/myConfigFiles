# open in chromium
alias opium='chromium-browser &>/dev/null'

# open with default
alias o='xdg-open &>/dev/null &'

# general commands in short
alias c='cd'
alias v='vim'
alias md='mkdir'
alias sv='sudo vim'
alias m='make'
alias mc='make clean'
alias sai='sudo apt install'
alias cf='cd ~/Desktop/myConfigFiles'

# change to particular directory
alias d='cd ~/Downloads'
alias dr='cd ~/Dropbox'
alias u='cd ~/Dropbox/1_Uni'

# edit particular file
alias vct='vim /home/gnostis/Dropbox/2_Hobbies/1_Prog/3_Files/1_vimCheat'
alias vb='vim ~/.bashrc'
alias vba='vim ~/.bash_aliases'
alias vv='vim ~/.vimrc'
alias vi3='vim /home/gnostis/.config/i3/config'

# open particular file 
alias vcp='xdg-open &>/dev/null ~/Pictures/vimCheat.jpg &'

# source bashrc
alias sb='source ~/.bashrc'

# run ranger
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias sr='sudo ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# show directory contents 2 levels deep
alias t='tree -L 2'

# run xampp manager
alias xampp='sudo /opt/lampp/manager-linux-x64.run'

# run my executables
alias g='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/2_Grades/1_showGrades/showGrades'
alias ag='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/2_Grades/2_addGrade/addGrade' 
alias e='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/1_showExercises/showExercises'
alias ae='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/2_addExercise/addExercise'
alias re='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/3_removeExercise/removeExercise'
alias toDo='~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated/1_Exs/2_addExercise/addExercise'
alias exams=''

# git
alias ga='git add .'
alias gc='git commit -m "m"'
alias gps='git push'
alias gpl='git pull'
alias gcln='git clone'
