# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/juliencaron/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/juliencaron/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/juliencaron/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/juliencaron/.fzf/shell/key-bindings.zsh"
