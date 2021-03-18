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

# FZF appearance options
export FZF_DEFAULT_OPTS="
	--prompt='∼ ' --pointer='▶' --marker='✓'
	--color=dark
  --color=fg:#6272a4,bg:-1,hl:#5fff87,fg+:#f8f8f2,bg+:-1,hl+:#ffb86c
	--color=info:#af87ff,prompt:#5fff87,pointer:#ff87d7,marker:#ff87d7,spinner:#ff87d7
  --info=inline
  --height=80%
"

# Use fdfind (fd) to search ignoring .gitignore natively
# export FZF_DEFAULT_COMMAND="fd ."
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# CTRL-T to add paths to a command
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# ALT-C to change directory
export FZF_ALT_C_COMMAND="fd -t d --hidden ."

# Bat theme, using by vim by example
export BAT_THEME="ansi-dark"

# CTRL-R to search the history (Natively)
