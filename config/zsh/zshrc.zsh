# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

#    ____  __                             _____        __       
#   / __ \/ /_        ____ ___  __  __   /__  /  _____/ /_      
#  / / / / __ \______/ __ `__ \/ / / /_____/ /  / ___/ __ \     
# / /_/ / / / /_____/ / / / / / /_/ /_____/ /__(__  ) / / /     
# \____/_/ /_/     /_/ /_/ /_/\__, /     /____/____/_/ /_/      
#                            /____/  

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Dracula color scheme
# eval `dircolors ~/dir_colors/dircolors`

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=( \
    git nvm gatsby \
    zsh-syntax-highlighting \
    zsh-autosuggestions \
    zsh-interactive-cd \
    taskwarrior \
    web-search \
    sudo \
)

source $ZSH/oh-my-zsh.sh

# Enable FZF Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# User configuration
[[ -f ~/.aliases ]] && source ~/.aliases


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Preferred applications
export TERMINAL="alacritty"
# export EDITOR='vim'
