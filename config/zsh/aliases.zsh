# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias ls="ls --color=auto"
alias svim="sudo vim"
alias update="sh ~/dotfiles/scripts/clean-ubuntu.sh"
alias myip="curl http://ipecho.net/plain; echo"
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias refresh="sh ~/dotfiles/scripts/refresh-symlinks.sh"
alias reload="source ~/.zshrc"
alias ciao="shutdown now"
alias pip="pip3"