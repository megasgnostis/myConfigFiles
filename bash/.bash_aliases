helpFilesDir="~/Desktop/2Github/2StunningHelpFiles"
helpScriptsDir="$helpFilesDir/1Scripts"

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
vimCheatImageFile="$helpFilesDir/3Vim/2VimCheat.png"

alias vcp="xdg-open &> /dev/null $vimCheatImageFile &"

# source 
alias sb="source $bashFile"
alias sx="xrdb $XresourcesFile"

# run ranger with aliases
alias aliasesInRangerScript="$helpScriptsDir/2Ranger.sh"
alias cdToLastRangerDir="cd \"\`cat $HOME/.rangerdir\`\""
alias r="aliasesInRangerScript; cdToLastRangerDir"
alias sr="sudo r"

# git
alias ga="git add ."
alias gc="git commit -m 'm'"
alias gps="git push"
alias gpl="git pull"
alias gcln="git clone"
alias gh="ga;gc;gps"

# ssh
rootAtLH="root@localhost" 
utopiaPort="22223" 
alias utopia="ssh -p $utopiaPort $rootAtLH"

# gnome terminal
alias gnter="gnome-terminal"

# ls aliases
alias l="ls -l"
alias la="ls -A"

# template files
alias vtempc="v $helpFilesDir/2TemplateFiles/1.c"
alias vtempsh="v $helpFilesDir/2TemplateFiles/2.sh"
alias vtemphs="v $helpFilesDir/2TemplateFiles/3.hs"
alias vtempMakefile="v $helpFilesDir/2TemplateFiles/Makefile"

# help scripts
alias temp="$helpScriptsDir/1CopyTemplate.sh"
alias dirReplace="$helpScriptsDir/4ReplaceInDir.sh"

# refresh wifi
alias wfr="sudo service network-manager restart"
