# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls --color=auto"
alias svim="sudo vim"
alias update="sh ~/dotfiles/clean-ubuntu.sh"
alias myip="curl http://ipecho.net/plain; echo"
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '

# Dev zsh alias
alias reload="source ~/.zshrc"