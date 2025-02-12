# Setup fzf
# ---------
if [[ ! "$PATH" == */home/hwan/.local/share/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/hwan/.local/share/.fzf/bin"
fi

source <(fzf --zsh)
