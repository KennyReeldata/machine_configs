# If you come from bash you might have to change your $PATH.
<<<<<<< HEAD
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="/home/kenny/.oh-my-zsh"

# Load antigen
source ~/.antigen.zsh
antigen use oh-my-zsh

=======
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#######################
source /home/kenny/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
# Load the theme.
antigen theme https://github.com/joshjon/bliss-zsh bliss

# Tell Antigen that you're done.
antigen apply

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
autoload -U colors && colors

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%{$fg[white]%}%n %{$fg[yellow]%}${PWD/#$HOME/~} %{$fg[green]%}${vcs_info_msg_0_} > '

########################
#
# Path to your oh-my-zsh installation.
#export ZSH="/home/kenny/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="pygmalion"
#ZSH_THEME="nate"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

>>>>>>> fa67bcbdf9f2113f603e43749efe68e4d41f59a2
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
<<<<<<< HEAD
COMPLETION_WAITING_DOTS="true"

# HIST_STAMPS="mm/dd/yyyy"
=======
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
HIST_STAMPS="mm/dd/yyyy"
>>>>>>> fa67bcbdf9f2113f603e43749efe68e4d41f59a2

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

<<<<<<< HEAD
#plugins=(
#  git
#)
# source $ZSH/oh-my-zsh.sh

# User configuration
=======
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  extract
  web-search
  git-extras
  docker
  vagrant
  colored-man-pages
#  zsh-autosuggestions
#  zsh-syntax-highlighting
  kubectl  
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

>>>>>>> fa67bcbdf9f2113f603e43749efe68e4d41f59a2
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

<<<<<<< HEAD
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias bdgpu='ssh kenny@bigdata-gpu1.research.cs.dal.ca'
alias bigdata='ssh kennethp@bigdata2.research.cs.dal.ca'
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias conda='/var/kenny/anaconda3/bin/conda'
alias update_vscode='wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb; sudo dpkg -i /tmp/code_latest_amd64.deb'
alias dc='docker-compose'

# Use bliss.dircolors
eval `dircolors ~/.bliss-dircolors/bliss.dircolors`
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Antigen packages

# Load NVM
export NVM_DIR="$(realpath $HOME/.nvm)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load the theme
antigen theme https://github.com/joshjon/bliss-zsh bliss
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle kubectl
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle https://github.com/softmoth/zsh-vim-mode

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

# Tell Antigen that you're done.
antigen apply

PROMPT='%{$fg[white]%}[%D{%f/%m/%y} %D{%L:%M:%S}] %{$fg[green]%}${PWD} %{$fg[yellow]%}Kenny %{$fg[blue]%}> '$PROMPT
# Load custom aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

=======
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Switch zsh to use VI bindings
# https://dougblack.io/words/zsh-vi-mode.html
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kenny/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kenny/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/kenny/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kenny/google-cloud-sdk/completion.zsh.inc'; fi

# Kennys aliases
alias dc='docker-compose'
alias dc_restart='docker-compose down; docker-compose build; docker-compose up -d'
alias puml='plantuml'
# alias python='python3.7' # Make 3.7 std
alias gv='gvim'
alias update_vscode='wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb; sudo dpkg -i /tmp/code_latest_amd64.deb'
alias zoom_in='xdotool key Ctrl+plus'
alias zoom_out='xdotool key Ctrl+minus'
alias kub='kubectl'

# Set prompt color based on zsh vim mode
>>>>>>> fa67bcbdf9f2113f603e43749efe68e4d41f59a2
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff steady underline"

<<<<<<< HEAD
# Add pyenv to path
export PATH="/home/kenny/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# PATH="/var/kenny/anaconda3/bin:$PATH"
# . /var/kenny/anaconda3/etc/profile.d/conda.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
=======
export PROJECT_ID=development-226108 # temp for work

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/kenny/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/kenny/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kenny/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/kenny/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

eval `dircolors ~/.bliss-dircolors/bliss.dircolors`

# Linuxbrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
export PATH=/home/linuxbrew/.linuxbrew/bin/:$PATH

# Git fuzzy
export PATH="/home/kenny/git-fuzzy/bin:$PATH"
alias gfz='git fuzzy'
>>>>>>> fa67bcbdf9f2113f603e43749efe68e4d41f59a2
