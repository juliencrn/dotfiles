# Setup fzf
# ---------
if [[ ! "$PATH" == */home/julien/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/julien/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/julien/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/julien/.fzf/shell/key-bindings.zsh"
