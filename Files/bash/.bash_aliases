# configs
bashFile="$HOME/.bashrc"
XresourcesFile="$HOME/.Xresources"
alias vb="vim $bashFile"
alias vba="vim $HOME/.bash_aliases"
alias vv="vim $HOME/.vimrc"
alias vi3="vim $HOME/.config/i3/config"
alias vx="vim $XresourcesFile"
alias sb="source $bashFile"
alias sx="xrdb $XresourcesFile"

# ranger
alias r="ranger --choosedir=$HOME/.rangerdir; cd \"\`cat $HOME/.rangerdir\`\""
alias sr="sudo ranger"

helpScripts="$HOME/StunningHelpFiles/Scripts"

# help scripts
alias temp="$helpScripts/CopyTemplate.sh"
alias dirReplace="$helpScripts/ReplaceInDir.sh"

# git
alias gh="$helpScripts/GitAddCommitPush.sh"
alias gp="git pull"
alias gc="git clone"

# general commands in short
alias c="cd"
alias v="vim"
alias sv="sudo vim"
alias m="make"
alias mc="make clean"
alias mc_="make clean_"
alias sai="sudo apt install"
alias bye="sudo shutdown 0"
alias ..="cd .."
alias gr="grep -r"

# executables
executables="$HOME/StunningExecutables"
alias exercises="$executables/Exercises/Executable"
alias grades="$executables/Grades/ShowGrades < $executables/Grades/grades.csv"

# uni
alias parlab="ssh parlab02@orion.cslab.ece.ntua.gr"
alias parlabfs="sshfs -o IdentityFile=$HOME/.ssh/id_rsa parlab02@orion.cslab.ece.ntua.gr:/home/parallel/parlab02/scirouter /home/gnostis/scirouter"

# periodic table
alias ptab="feh $HOME/Pictures/PeriodicTable.png"

# check temperature
alias ct=" while true; do sudo cpu; sleep 2; done"
