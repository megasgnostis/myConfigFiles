helpFilesDir="~/Desktop/2_Github/stunningHelpFiles"

# general commands in short
alias c="cd"
alias v="vim"
alias md="mkdir"
alias sv="sudo vim"
alias m="make"
alias mc="make clean"
alias sai="sudo apt install"

# edit particular file
bashFile="~/.bashrc"
bashAliasesFile="~/.bash_aliases"
vimFile="~/.vimrc"
i3File="~/.config/i3/config"
XresourcesFile="~/.Xresources"

alias vb="vim $bashFile"
alias vba="vim $bashAliasesFile"
alias vv="vim $vimFile"
alias vi3="vim $i3File"
alias vx="vim $XresourcesFile"

# open particular file 
vimCheatImageFile="$helpFilesDir/3_Vim/2_vimCheat.png"

alias vcp="xdg-open &> /dev/null $vimCheatImageFile &"

# source 
alias sb="source $bashFile"
alias sx="xrdb $XresourcesFile"

# run ranger
alias aliasesInRangerScript="$helpFilesDir/1_Scripts/ranger.sh"
alias cdToLastRangerDir="cd \"\`cat $HOME/.rangerdir\`\""
alias r="aliasesInRangerScript; cdToLastRangerDir"
alias sr="sudo r"

# run my executables
uniRelatedFile="~/Dropbox/2_Hobbies/1_Prog/1_Projects/1_UniRelated"
exercisesFile="1_Exs"
gradesFile="2_Grades"
 
alias g="$uniRelatedFile/$gradesFile/1_showGrades/showGrades"
alias ag="$uniRelatedFile/$gradesFile/2_addGrade/addGrade" 
alias e="$uniRelatedFile/$exercisesFile/1_showExercises/showExercises"
alias ae="$uniRelatedFile/$exercisesFile/2_addExercise/addExercise"
alias re="$uniRelatedFile/$exercisesFile/3_removeExercise/removeExercise"
alias toDo="$uniRelatedFile/$exercisesFile/2_addExercise/addExercise"

# git
alias ga="git add ."
alias gc="git commit -m 'm'"
alias gps="git push"
alias gpl="git pull"
alias gcln="git clone"
alias gh="ga;gc;gps"

# ssh
orionParlab="parlab12@orion.cslab.ece.ntua.gr" 
orionParlabHome="/home/parallel/parlab12/" 
parlabMountpoint="~/Desktop/1_Parlab"
alias parlab="ssh $orionParlab"
alias parlabfs="sshfs $orionParlab:$orionParlabHome $parlabMountpoint"

# gnome terminal
alias gnter="gnome-terminal"

# ls aliases
alias l="ls -l"
alias la="ls -A"
