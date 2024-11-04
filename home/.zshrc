echo "                                                                                         "
echo "                                                                                         "
echo "                                       @#         @%*                                    "
echo "                           @@ @@ @@@    @@@@@@@@@ /@@  @@%  @@                           "
echo "                      ##@@@@@#@ @@@@@ @# @@&@@  &, @@@@@@@  @,@                          "
echo "                 @.   @@@ (@ @  @@@@(&,@  @ @@@@(@@@@/@.@@@@@@ @*                        "
echo "              @@ @@@/#  @ @@@ ,@@@@@ @ @&@@/@%   #(@ @@( @ @@(@ @  @                     "
echo "            @@ @ @ /( @   /@@@@ @@@@@  @            @@* &*@@@@. *@@ @@                   "
echo "          @@@@( @  @ @    @@@@@   @ @*  @    @@ (@@@@@ /   @*/@,@ @*@@@                  "
echo "          @@&@@@  &# @&@                 @@@@@   @(@@        @ @@ @@@@@@                 "
echo "      &@., @@@@@  &         %@@@@@@*     @@@, @@@@@  @        (@*@ (@@ @@@               "
echo "      .@@@ @@  @        *@@@@#/@@  @(       ,#@@@@#      &    @   @*@@@@#@@              "
echo "     @ @@@ @@@  &    *@@&@  @@@@@ .@                @          % @ @@ @&@ /@             "
echo "    @  *@@@@@ @ @       @@%% %@    %   @ @          %           @@@@  @,@@@@@            "
echo "   @@ @ @@&@@#  @@@  .@  @@/   @*       @ @                  *@   %/@# @/@%@@@@          "
echo "   @@ @ @@@ @ @       @     @  @@          (                  @,@ @  %  *@*@@@@  %       "
echo "   @ @@@@@@ @@ @@ @                       @   @                     @@@@,@@@@@@(@        "
echo "    @  @ @#@ @@  @ *                 ,*        (*(   @@.            @@ (@@,/@@@@@ @      "
echo "      ,@/ @@. @@ @@(                 #                  #  @,(@     @,  * @@@@@@@@@ @    "
echo "      &*@ .@@@ @  @@@    .@  %*        ,@@@#   @ @/@@@@@@@@@, .(    @@ @%( @@@@(@ @@%@   "
echo "      @@@&@ @#,@@   @             @    , @@@@,@@@& @(/@@@* @    @    @  @* ,@@ @@@ @ @@@@"
echo "      @*@@.@@@@@@@@* @         @     @(%@@ ** @@  @@@@@   @      @@ @@@.,   @@@@@@@@#@@@ "
echo "     @&*@,@@@@@@ @@  *@ &@        @@@@@@@@@@#@&@@,       @        .@@%@       @@@,@  .   "
echo "      @@@&@ @@ @@@ @@..  @        @    @/        //@@@(/,         @@@&          @/@  @   "
echo "      @@@.@@ @ @@@  @@ .@&@     /,&           @ @  %@ @        @ @&                . (   "
echo "   % @@ @@@ &#  &@@,/*@,   @&,@ @,@         @/@@,@          @( @                   @     "
echo "         @ @@@@*( @@@@@ @&,  @@@%@@@           / # # @@@@@@@@                       @    "
echo "         @&&@@@@. @@/@&@@@(   @#@  @@@@,  @* @ @@@@ @@@@@@@                              "
echo "          @@@ @@@@  @@@@@@ @    @  %   , @@@@%@ @@ @@@&//                                "
echo "           @   .((@@@@@@/@%@@@@        &       @ @@   ,                                  "
echo "             @   @ #@@ @  @ @                                                            "
echo "             @   @ .@ ,@@@ ,  @@&                                                        "
echo "             &% ((    @@@(,@                                                             "
echo "                                                                                         "

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

clear

echo "Some useful custom functions:"
echo "  untar to unzip a *.tar.gz file"
echo "  sha256 to create a hash of a file"
echo "  pwdf to print the path of the front most finder window"
echo "  cdf to change to directory of front most finder window"
echo "  awk \"{print \\\$COL_NUM}\" to get the column of some returned results" 
echo "  \`| xargs SOME_COMMANDS\` to iterate over some results and execute comands on them"
echo "  combine the two above, eg \`docker image ls | grep cdk | awk "{print \$3}" | uniq | xargs docker rmi -f\`"
echo "  jx to view json files"
echo "  sc as a alias to sgpt --code"
echo ""
echo "If you are in tmux, here are some useful commands:"
echo "  <prefix>s               - interactivly switch between sessions"
echo "  <prefix>z               - zoom in to current windows"
echo "  <prefix>( and <prefix>) - move to previous or next session"
echo "  <prefix>p               - chane to previous window"
echo "  <prefix>P               - chane to previous pane (set in ~/.tmux.conf)"
echo "  <prefix>c               - create new window in current session"
echo "  <prefix>w               - choose window from list"
echo "  :break- pane            - break the current pane out into it's own window"
echo "  <prefix>,               - rename current window"
echo "  <prefix>{               - swap current pane with another (useful if you want to move a particular pane as <prefix>CTRL+o rearranges everything)"
echo "                            - alternatively <prefix>q to see pane numbers then <prefix>:swap-pane -s 3 -t 5"
echo "  <prefix><HOME>          - swap current window with one on the left."
echo "  <prefix><END>           - swap current window with one on the right."
echo "  <prefix>a               - swap to previous window."

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# Ie, if you type `cd some-dir` and hit <TAB> it will complete to `cd some_dir`
# if it can't find some-dir.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  web-search
  dirhistory
  # try vi-mode or vi-mode-like-keys to get more vim functionality. May need to remove the bindkey stuff below.
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_AU.UTF-8

export EDITOR="vim"

# Enable vi mode
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M vicmd 'H' beginning-of-line
bindkey -M vicmd 'L' end-of-line
bindkey -M viins '^P' up-line-or-history


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/.aliases

# I followed this guide: https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/
# run `man zshoptions` to see what each option does
# to revert to defaults, run `emulate -LR zsh` (only reverts for the active
# shell). If in doubt, it may be useful to add this at the beginning of your
# zsh scripts.

setopt AUTO_CD  # This seems to be set already. Not sure where
setopt NO_CASE_GLOB  # allows `cd ~/m*<TAB>` to expand to both `~/miniconda3` and also `~/Music`
# for some reason HISTFILE is set to ~/.bash_history already. Not sure why, but I will leave it for now.
# HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history  # The syntax ${ZDOTDIR:-$HOME} means it will use the value of ZDOTDIR when it is set or default to the value of HOME otherwise.
setopt EXTENDED_HISTORY  # sets template for $HISTFILE, `: <beginning time>:<elapsed seconds>;<command>`
# SAVEHIST=10000  # session history size limit. Defaults to 10000
# HISTSIZE=50000  # $HISTFILE size limit. Defaults to 50000
setopt NOSHARE_HISTORY  # turned off because it appends to the $HISTFILE as commands are types, instead of when the shell is exited.
setopt APPEND_HISTORY  # append to $HISTFILE instead of replace it. 
setopt HIST_FIND_NO_DUPS  # ignore duplicates when searching
setopt HIST_REDUCE_BLANKS  # removes blank lines from history
setopt HIST_VERIFY  # allows you to edit before running when using `!!`
setopt CORRECT
setopt CORRECT_ALL

export PATH="$PATH:/home/$USER/.local/bin"  # path for zoxide?
export PATH="/usr/local/bin:$PATH"  # this came from Stu. There are some executables there, so I will keep it in the path.
export PATH="/usr/local/sbin:$PATH"  # this came from Stu. sbin folder exists, but is empty.
export PATH="/home/$USER/.bin:$PATH"  # this is where I keep some scripts
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin # this was added as part of the postgress install: http://postgresapp.com/documentation/cli-tools.html
export PATH="/opt/PanoplyJ:$PATH"

export RIPGREP_CONFIG_PATH="/home/$USER/.config/ripgreprc"

# export CHEAT_CONFIG_PATH="~/.dotfiles/home/cheat_config.yml"  # instead, copy the file because the locations will be different on different systems
export MCFLY_LIGHT=FALSE

eval "$(direnv hook zsh)"
eval "$(mcfly init zsh)"
eval "$(zoxide init zsh)"

# Powerlevel10k settings:
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# <<< conda initialize <<<
# I think there is a conflict between /home and /Users between Ubuntu and MacOS. I have used the CONDA_PREFIX 
# which was already set. Otherwise, it should be equal to: /usr/local/Caskroom/miniconda/base
# If this stops working, I may need to run conda init until I get some consistent code sorted.
# >>> conda initialize >>>
if [[ "$(uname)" == "Darwin" ]]; then
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
            . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
        else
            export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
elif [[ "$(uname)" == "Linux" ]]; then
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/$USER/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/$USER/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/$USER/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/$USER/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi

source <(fx --comp bash)  # gives autocomplete for fx

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo ""
pwd
cd .
