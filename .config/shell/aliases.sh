#!/bin/bash
# Aliases
alias 7zc="7z a -mx=9"
alias acp="advcp -gv"
alias amv="advmv -gv"
alias apti="sudo apt install"
alias apts="apt search"
alias aptr="sudo apt remove"
alias aptq="apt show"
alias aptu="sudo apt update && sudo apt upgrade"
alias aran="autorandr -l"
alias asc="asciinema"
alias cat="bat"
alias ccp="clipcopy"
alias cdx='cd $(xplr)'
alias cless='colorize_less -N'
alias cols='spectrum_ls'
alias cp="cp -irv"
alias cpa="clippaste"
alias diff="diff --color=auto"
alias e='nvim $(files)'
alias exag="exa -ahlT -L=1  -s=extension --git --group-directories-first"
alias fd="fd -H"
alias fdir="find . -type d -name"
alias ffil="find . -type f -name"
alias files="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias gbrr="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gc="git commit -m"
alias gcm="git checkout main"
alias gcma="git commit --amend -m"
alias gcmn="git add . && git commit --amend --no-edit"
alias gdh="git diff HEAD"
alias ghrd="gh repo edit -d 'Sample description'"
alias ghrh="gh repo edit -h 'https://user.github.io/repo'"
alias ghrt="gh repo edit --add-topic 'topic1,topic2'"
alias ghrv="gh repo edit --visibility public"
alias gmv="git mv"
alias gsv="git status -v"
alias gtop='cd "$(git rev-parse --show-toplevel)"'
alias grep="grep --color=auto"
alias icat="kitty +kitten icat"
alias java8="export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre"
alias java11="export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/"
alias jupn="jupyter notebook"
alias la="ls -AXb --group-directories-first --sort=extension"
alias ldir="ls -d */"
alias ln="ln -sv"
alias ls='ls --color=auto'
alias lsda="lsd -A --group-dirs first --classify"
alias lsdo="lsd -A --group-dirs first --classify --recursive --depth=2"
alias me="README.md"
alias mv="mv -iv"
alias ncdu="ncdu --color=dark -x"
alias npi="npm install"
alias npr="npm run"
alias open="open_command"
alias paci="sudo pacman -S"
alias pacq="pacman -Qi"
alias pacr="sudo pacman -Rsc"
alias pacrd="pacr $(pacman -Qdtq | tr '\n' ' ')"
alias pacs="pacman -Ss"
alias pacu="sudo pacman -Syu"
alias plasmar="kquitapp5 plasmashell && kstart5 plasmashell"
alias pp="prettyping --nolegend"
alias q="exit"
alias rm="rm -irv"
alias rmf="rm -rf"
alias serv="python -m http.server 1234"
alias shad="ssh-add ~/.ssh/id_rsa"
alias shag='eval "$(ssh-agent -s)"'
alias sto="stackoverflow"
alias sysd="sudo systemctl disable"
alias syse="sudo systemctl enable"
alias sysr="sudo systemctl restart"
alias syss="systemctl status"
alias systa="sudo systemctl start"
alias systo="sudo systemctl stop"
alias tmux="tmux -u"
alias tmuxm="tmux new-session \; split-window -h \; split-window -v \; attach"
alias trii="trizen -S --noedit"
alias tris="trizen -Ss --noedit"
alias triu="trizen -Syu --noedit"
alias vi="nvim"
alias xp="xplr"
alias yayi="yay -S"
alias yayu="yay -Syu"
alias ytdl="youtube-dl"

if [ -f "/usr/bin/grc" ]; then
    alias df="grc df"
    alias gcc="grc gcc"
    alias iwconfig="grc iwconfig"
    alias last="grc last"
    alias make="grc make"
    alias mount="grc mount"
    alias mtr="grc mtr"
    alias ping="grc ping"
    alias ps="grc ps"
    alias traceroute="grc traceroute"
    alias wdiff="grc wdiff"
fi

alias vimrc="vim ~/.vimrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="$EDITOR ~/.zshrc"
alias bashrc="$EDITOR ~/.bashrc"
alias alia="$EDITOR ~/.config/shell/aliases.sh"
alias enva="$EDITOR ~/.config/shell/envars.sh"
alias func="$EDITOR ~/.config/shell/functions.sh"
alias meow="$EDITOR ~/.config/kitty/kitty.conf"
alias p2k="$EDITOR ~/.config/shell/powerlevel2k.zsh"

# Causes Issues
# if [ -f "/usr/bin/kdeconnect-cli" ]; then
#     alias send="kdeconnect-cli -d "$(kdeconnect-cli -a --id-only)" --share"
# fi