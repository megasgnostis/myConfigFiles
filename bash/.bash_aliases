# dirs
helpFilesDir="~/Desktop/2StunningHelpFiles"
helpScriptsDir="$helpFilesDir/1Scripts"

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

# run ranger with aliases
alias aliasesInRangerScript="$helpScriptsDir/2Ranger.sh"
alias cdToLastRangerDir="cd \"\`cat $HOME/.rangerdir\`\""
alias r="aliasesInRangerScript; cdToLastRangerDir"
alias sr="sudo ranger"

# template files
alias vTmpC="v $helpFilesDir/2TemplateFiles/1.c"
alias vTmpSh="v $helpFilesDir/2TemplateFiles/2.sh"
alias vTmpHs="v $helpFilesDir/2TemplateFiles/3.hs"
alias vTmpMakefile="v $helpFilesDir/2TemplateFiles/Makefile"

# help scripts
alias temp="$helpScriptsDir/1CopyTemplate.sh"
alias dirReplace="$helpScriptsDir/4ReplaceInDir.sh"

# git
alias ga="git add ."
alias gc="git commit -m 'm'"
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
alias sai="sudo apt install"

# open particular file 
vimCheatImageFile="$helpFilesDir/3Vim/2VimCheat.png"
alias vcp="xdg-open &> /dev/null $vimCheatImageFile &"

# source 
alias sb="source $bashFile"
alias sx="xrdb $XresourcesFile"

# ssh
rootAtLH="root@localhost" 
utopiaPort="22223" 
alias utopia="ssh -p $utopiaPort $rootAtLH"
