# #    ____  __                             _____        __       
# #   / __ \/ /_        ____ ___  __  __   /__  /  _____/ /_      
# #  / / / / __ \______/ __ `__ \/ / / /_____/ /  / ___/ __ \     
# # / /_/ / / / /_____/ / / / / / /_/ /_____/ /__(__  ) / / /     
# # \____/_/ /_/     /_/ /_/ /_/\__, /     /____/____/_/ /_/      
# #                            /____/  

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# 1 brew for M1 at /opt/homebrew/bin/brew (default)
# 1 brew for ARM at /usr/local/bin/brew (x86_64)
export BREW="/opt/homebrew"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( \
    git nvm  yarn \
    zsh-syntax-highlighting \
    zsh-autosuggestions \
    zsh-interactive-cd \
    rust \
    sudo history \
	history-substring-search
)

# # Enable FZF Fuzzy Finder
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# # # Enable powerlevel10k zsh theme
if [ -f /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme ] ; then
    source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# # Preferred applications
# export TERMINAL="alacritty"
# export EDITOR='vim'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
[[ -f ~/.aliases ]] && source ~/.aliases

# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------
# -----------------------------------------------------------------------------

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "/usr/local/bin" ] ; then
    PATH="/usr/local/bin:$PATH"
fi

if [ -d "/opt/homebrew/bin" ] ; then
    PATH="/opt/homebrew/bin:$PATH"
fi

if [ -d "$HOME/dotfiles/bin" ] ; then
    PATH="$HOME/dotfiles/bin:$PATH"
fi

# Node Version Manager (nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Pupperteer headless web browser
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# Python
export PATH=$HOME/Library/Python/3.8/bin:${PATH}

# Golang
export PATH=/usr/local/go/bin:${PATH}
GOPATH="$HOME/go"

# Rust - cargo
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env

# Solana
# export PATH="$HOME/.solana/bin:$PATH"
export PATH="/Users/juliencaron/.solana"/bin:"$PATH"

# Coreutils (used for Solana-Rust)
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Enable ZSH plugins
if [ -f $BREW/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] ; then
    source $BREW/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -f $BREW/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] ; then
    source $BREW/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f $BREW/share/zsh-history-substring-search/zsh-history-substring-search.zsh	 ] ; then
	source $BREW/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi
