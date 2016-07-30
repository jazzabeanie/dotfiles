export EDITOR="vim"
export GOPATH=~/Workspace/go
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin # this was added as part of the postgress install: http://postgresapp.com/documentation/cli-tools.html
export PATH="~/.bin:/usr/local/sbin:/usr/local/bin:$PATH:$GOPATH/bin"
export PS1='\[\033[0;36m\]\t\[\e[0m\] \w \[\033[0;32m\]$(vcprompt -f "[%n:%b%u%m] ")\[\033[1;34m\]\$ \[\033[0m\] \n→ '

# only applicable to OSX
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

source ~/.aliases
export CLICOLOR=1 # make ls command display colors by defult (like with -N argument)

#complete -W "$(teamocil --list)" teamocil # this file was migrated from the original .bashrc and was created when installing teamocil. See https://github.com/remiprev/teamocil/blob/master/README.md

##### This is from the old PS1 (prompt) setup
# # Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
# NO_COLOR='\e[0m'
# EBLACK='\e[1;30m'
# GREEN='\e[0;32m'
# RED='\e[0;31m'
# YELLOW='\e[0;33m'
# PS1="\n\u:\w \$(git_bash_output)\[$NO_COLOR\] \n→ "

# #this has something to do with the PS1 variable
# function _minutes_since_last_commit {
#     now=`date +%s`
#     last_commit=`git log --pretty=format:'%at' -1`
#     seconds=$((now-last_commit))
#     minutes=$((seconds/60))
#     echo $minutes
# }
# 
# #this has something to do with the PS1 variable
# git_bash_output() {
#     local g="$(__gitdir)"
#     if [ -n "$g" ]; then
#         local MINUTES_SINCE_LAST_COMMIT=`_minutes_since_last_commit`
#         if [ "$MINUTES_SINCE_LAST_COMMIT" -gt 30 ]; then
#             local COLOR=${RED}
#         elif [ "$MINUTES_SINCE_LAST_COMMIT" -gt 10 ]; then
#             local COLOR=${YELLOW}
#         else
#             local COLOR=${GREEN}
#         fi
#         local HASH="$(vcprompt -f %h)"
#         local SINCE_LAST_COMMIT="${COLOR}$(_minutes_since_last_commit)m${NO_COLOR}"
#         local GIT_PROMPT=`__git_ps1 "${YELLOW}%s|${HASH}|${NO_COLOR}${SINCE_LAST_COMMIT}"`
#         echo ${GIT_PROMPT}
#     fi
# }


# ###### this is the old aliases file that was reference from the original bashrc file
# ## Finder
# #alias o='open . &'
# 
# ## Processes
# #alias tu='top -o cpu' #cpu
# #alias tm='top -o vsize' #memory
# 
# ## Command Line
# #alias l.='ls -d .[^.]*'
alias l='ls -alhGtr' # long, most recent first, colour
# #alias ll='ls -Fol'
# alias lt='ls -alhtr' # list, most recent first #disabled because this conflicts with localtunnel
# alias la='ls -al'
# #alias ..='cd ..'
# #alias s='cd ..'
# #alias cdd='cd -'
alias cdw='cd ~/Workspace'
# #alias cdgo='cd ~/Workspace/go'
# #alias cdwp='cd ~/Workspace/personal'
# #alias cdwc='cd ~/Workspace/cards'
# #alias cdwaj='cd ~/Workspace/antipodeanlabs_jenkins'
# #alias cdwac='cd ~/Workspace/antipodeanlabs_chef'
# #alias cdt='cd ~/Tools'
# #alias cdte='cd ~/Temp'
# #alias cdtmp='cd ~/Temp'
# #alias cddwn='cd ~/Downloads'
# #alias f='fg'
alias h='cd ~/'
# #alias md='mkdir -p'
# #alias rmd='rm -rf'
# #alias rk='rake'
# #alias rkdb='rake db:migrate db:test:prepare'
# #alias r='rails'
# #alias g='generate'
# #alias be='bundle exec '
# #alias bs='bundle exec rspec '
# 
# function largest() {
#   du -h . | grep ^[0-9.][0-9.]G;
#   du -h . | grep ^[5-9][0-9][0-9.]M
# }
# 
# #function take() {
# #  mkdir -p $1
# #  cd $1
# #}
# 
# #function stun() {
# #  ssh -D 9000 $1
# #}
# 
# #alias vi='vim -N' # I believe this setting is redundant because of the "set nocompatible" line in the .vimrc file.
# 
# ## Aliases
# #alias reload='source ~/Workspace/dotfiles/bash/aliases'
# #alias ea='vim -N ~/Workspace/dotfiles/bash/aliases && reload' # edit and reload
# #alias ca='cat ~/Workspace/dotfiles/bash/aliases'
# #alias eh='sudo vim -N /etc/hosts'
# 
# #function ep() {
# #  echo "$*" | pbcopy
# #}
# 
# #alias rmsf="mv ~/Library/Safari ~/Desktop/Safari-`date +%Y%m%d%H%M%S`; \
# #rm -Rf ~/Library/Caches/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
# #rm -Rf ~/Library/Caches/Metadata/Safari; \
# #rm -Rf ~/Library/Caches/com.apple.Safari; \
# #rm -Rf ~/Library/Caches/com.apple.WebKit.PluginProcess; \
# #rm -Rf ~/Library/Cookies/Cookies.binarycookies; \
# #rm -Rf ~/Library/Preferences/Apple\ -\ Safari\ -\ Safari\ Extensions\ Gallery; \
# #rm -Rf ~/Library/Preferences/com.apple.Safari.LSSharedFileList.plist; \
# #rm -Rf ~/Library/Preferences/com.apple.Safari.RSS.plist; \
# #rm -Rf ~/Library/Preferences/com.apple.Safari.plist; \
# #rm -Rf ~/Library/Preferences/com.apple.WebFoundation.plist; \
# #rm -Rf ~/Library/Preferences/com.apple.WebKit.PluginHost.plist; \
# #rm -Rf ~/Library/Preferences/com.apple.WebKit.PluginProcess.plist; \
# #rm -Rf ~/Library/PubSub/Database; \
# #rm -Rf ~/Library/Saved\ Application\ State/com.apple.Safari.savedState"
