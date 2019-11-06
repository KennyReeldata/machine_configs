# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH="/home/kenny/.oh-my-zsh"

# Load antigen
source ~/.antigen.zsh
antigen use oh-my-zsh

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

#plugins=(
#  git
#)
# source $ZSH/oh-my-zsh.sh

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

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

MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff steady underline"

# Add pyenv to path
export PATH="/home/kenny/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# PATH="/var/kenny/anaconda3/bin:$PATH"
# . /var/kenny/anaconda3/etc/profile.d/conda.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
