# dirs
helpFilesDir="~/Desktop/2StunningHelpFiles"
helpScriptsDir="$helpFilesDir/1Scripts"
rangerScriptsDir="/home/gnostis/Desktop/1StunningConfigFiles/ranger/scripts"

# edit particular config file
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

# startup
alias setLangs="setxkbmap -layout us,gr"
alias changeLang="setxkbmap -option 'grp:ctrl_alt_toggle'"
alias background="feh --bg-scale ~/Dropbox/3Other/nature.jpg"
alias initialize="setLangs;changeLang;background"

# peripherals
alias rwf="sudo service network-manager restart"
alias sound="alsamixer"
alias battery="acpi"
alias big="xrandr --output eDP-1 --mode 1360x768"
alias mirror='xrandr --output HDMI-1 --mode 1360x768 --output eDP-1 --mode 1360x768 --same-as HDMI-1'

# run ranger with aliases
alias aliasesInRangerScript="$rangerScriptsDir/1Ranger.sh"
alias cdToLastRangerDir="cd \"\`cat $HOME/.rangerdir\`\""
alias r="aliasesInRangerScript; cdToLastRangerDir"
alias sr="sudo ranger"

# help scripts
alias temp="$helpScriptsDir/1CopyTemplate.sh"
alias dirReplace="$helpScriptsDir/2ReplaceInDir.sh"

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
alias l="ls -l"
alias la="ls -A"
alias md="mkdir"
alias sv="sudo vim"
alias m="make"
alias mc="make clean"
alias mc_="make clean_"
alias sai="sudo apt install"
alias py="python3"
alias pip="python3 -m pip"
alias bye="shutdown 0"
alias ..="cd .."
alias cb="cabal build"
alias cr="cabal repl"

# open particular file 
vimCheatImageFile="$helpFilesDir/3Vim/2VimCheat.png"
alias vcp="xdg-open &> /dev/null $vimCheatImageFile &"

# source 
alias sb="source $bashFile"
alias sx="xrdb $XresourcesFile"

# executables
alias exercises="/home/gnostis/Desktop/3StunningExecutables/1Exercises/4Executable"
alias grades="/home/gnostis/Desktop/3StunningExecutables/2Grades/1ShowGrades < /home/gnostis/Desktop/3StunningExecutables/2Grades/grades.csv"

# uni
alias parlab="ssh parlab02@orion.cslab.ece.ntua.gr"
alias parlabfs="sshfs -o IdentityFile=~/.ssh/id_rsa parlab02@orion.cslab.ece.ntua.gr:/home/parallel/parlab02/scirouter scirouter"
