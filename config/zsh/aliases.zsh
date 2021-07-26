# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Utils
alias ls="exa --icons"
alias ll="exa -lah --icons" # -l -> List | -a -> All | -r -> Reverse | T -> Sort -Time | -h -> Human size (Ko, Mo, Go)
alias tree="exa --icons -T"
alias cat='bat --theme="Dracula" --style="numbers,changes,header"'
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
# alias ibrew='arch -x86_64'
alias ps='procs'

# Shortcuts
alias svim="sudo vim"
alias myip="curl http://ipecho.net/plain; echo"
alias now='tty-clock -cbs -f "%A %d %B %Y"'

# Git (We already have aliases from the zsh's git plugin)
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcop="git checkout -"
# alias gpush='git push -u origin "$(git branch --show-current)"'
# alias gpull='git pull origin "${(git branch --show-current)}"'
alias gls="git log --pretty=format:\"%C(yellow)%h%Cblue%d\\ %Creset%s%Cgreen\\ [%cn]\" --decorate"
alias gc="git commit -m"
alias grb="git rebase"
alias grbm="git rebase master"
alias grbi="git rebase -i"

# Quick access to projects
alias cc="cd ~/www/chefclub.tv"
alias df="cd ~/dotfiles"
alias uh="cd ~/www/typescript/usehooks"

# Tmux
alias t="tmux"
alias ta="t a -t" # attach | go to existing session
alias tls="t ls" # list sessions
alias tn="t new -t" # Create session

# System
alias reload="source ~/.zshrc"

# Reword
# alias calc='qalc'
# alias pip="pip3"

# Suffix Alias
# This follow will open VSCode when write filename using txt extension
alias -s txt=code
