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

# peripherals
alias rwf="sudo service network-manager restart"
alias mirror='xrandr --output eDP-1 --same-as HDMI-1'

# run ranger with aliases
scripts="$Stunning/StunningConfigFiles/Scripts"
alias aliasesInRangerScript="$scripts/Ranger.sh"
alias cdToLastRangerDir="cd \"\`cat $HOME/.rangerdir\`\""
alias r="aliasesInRangerScript; cdToLastRangerDir"
alias sr="sudo ranger"

# help scripts
helpFiles="$Stunning/StunningHelpFiles"
alias temp="$helpFiles/Scripts/CopyTemplate.sh"
alias dirReplace="$helpFiles/Scripts/ReplaceInDir.sh"

# git
alias ga="git add ."
alias gc="git commit -m 'I am an automated comment'"
alias gps="git push"
alias gh="ga;gc;gps"
alias gpl="git pull"
alias gcln="git clone"

# general commands in short
alias c="cd"
alias v="vim"
alias md="mkdir"
alias sv="sudo vim"
alias m="make"
alias mc="make clean"
alias mc_="make clean_"
alias sai="sudo apt install"
alias bye="shutdown 0"
alias ..="cd .."
alias gr="grep -r"

# executables
executables="$Stunning/StunningExecutables"
alias exercises="$executables/Exercises/Executable"
alias grades="$executables/Grades/ShowGrades < $executables/Grades/grades.csv"

# uni
alias parlab="ssh parlab02@orion.cslab.ece.ntua.gr"
alias parlabfs="sshfs -o IdentityFile=$HOME/.ssh/id_rsa parlab02@orion.cslab.ece.ntua.gr:/home/parallel/parlab02/scirouter /home/gnostis/scirouter"

# periodic table
alias ptab="feh $HOME/Pictures/PeriodicTable.png"
