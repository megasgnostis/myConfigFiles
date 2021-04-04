
# dirs
helpScripts="$HOME/StunningHelpFiles/Scripts"

# common commands in short
alias c="cd"
alias v="vim"
alias sv="sudo vim"
alias m="make"
alias mc="make clean"
alias mc_="make clean_"
alias sai="sudo apt install"
alias bye="shutdown 0"
alias ..="cd .."
alias gr="grep -rn"

# git
alias gh="$helpScripts/GitAddCommitPush.sh"
alias gp="git pull"
alias gc="git clone"

# edit configs
bashFile="$HOME/.bashrc"
XresourcesFile="$HOME/.Xresources"
alias vb="vim $bashFile"
alias vba="vim $HOME/.bash_aliases"
alias vv="vim $HOME/.vimrc"
alias vi3="vim $HOME/.config/i3/config"
alias vx="vim $XresourcesFile"

# source configs
alias sb="source $bashFile"
alias sx="xrdb $XresourcesFile"

# ranger
alias r="ranger --choosedir=$HOME/.rangerdir; cd \"\`cat $HOME/.rangerdir\`\""
alias sr="sudo ranger"

# help scripts
alias temp="$helpScripts/CopyTemplate.sh"
alias dirReplace="$helpScripts/ReplaceInDir.sh"
alias inVim="$helpScripts/InVim.sh"

# executables
executables="$HOME/StunningExecutables"
alias exercises="$executables/Exercises/Executable"
alias grades="$executables/Grades/ShowGrades < $executables/Grades/grades.csv"
