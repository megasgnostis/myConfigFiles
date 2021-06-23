
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
alias sau="sudo apt update; sudo apt upgrade"
alias bye="shutdown 0"
alias ..="cd .."
alias gr="grep -rn"

# git
alias gh="$helpScripts/GitAddCommitPush.sh"
alias gp="git pull"
alias gc="git clone"

# edit configs
bashFile="$HOME/.bashrc"
alias vb="vim $bashFile"
alias vba="vim $HOME/.bash_aliases"
alias vv="vim $HOME/.vimrc"

# source configs
alias sb="source $bashFile"

# ranger
alias r="ranger --choosedir=$HOME/.rangerdir; cd \"\`cat $HOME/.rangerdir\`\""

# help scripts
alias temp="$helpScripts/CopyTemplate.sh"
alias dirReplace="$helpScripts/ReplaceInDir.sh"
alias inVim="$helpScripts/InVim.sh"

# executables
executables="$HOME/StunningExecutables"
alias exercises="$executables/Exercises/Executable"
alias grades="$executables/Grades/ShowGrades < $executables/Grades/grades.csv"
