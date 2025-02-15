#!/usr/bin/env zsh
#################################################################
# https://github.com/Phantas0s/.dotfiles/blob/master/zsh/zshenv #
#################################################################

#################################################################
# EXPORT ENVIRONMENT VARIABLE                                   #
#################################################################

#export TERM='rxvt-256color'
#export DOTFILES="$HOME/.dotfiles"
export WORKSPACE="$HOME/learn"

#[ -f "$DOTFILES/install_config" ] && source "$DOTFILES/install_config"

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

# editor
export EDITOR="nvim"
export VISUAL="nvim"
export VIMCONFIG="$XDG_CONFIG_HOME/nvim"
export VIMDATA=~/.local/share/nvim

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# Man pages
export MANPAGER='nvim +Man!'

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

FZF_COLORS="bg+:-1,\
fg:gray,\
fg+:white,\
border:black,\
spinner:0,\
hl:yellow,\
header:blue,\
info:green,\
pointer:red,\
marker:blue,\
prompt:gray,\
hl+:red"

export FZF_DEFAULT_OPTS="--height 60% \
--border sharp \
--layout reverse \
--color '$FZF_COLORS' \
--prompt '∷ ' \
--pointer ▶ \
--marker ⇒"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -n 10'"
export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree ls"

# export FZF_TMUX_OPTS="-p"

# X11
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# git
export GIT_REVIEW_BASE=main # See gitconfig

export NVM_DIR="$HOME/.nvm"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# PATH
# User's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Rust
export RUSTUP_HOME="$HOME/.local/share/rust/rustup"
export CARGO_HOME="$HOME/.local/share/rust/cargo"
source "$HOME/.local/share/rust/cargo/env"

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export PATH="$PATH:/home/hwan/go/bin:/usr/local/go/bin"
export PATH="$PATH:/home/hwan/learn/roc/roc_nightly-linux_x86_64-2025-01-07-a089cf2"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hwan/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hwan/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/hwan/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hwan/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

source "$HOME/.local/bin/env"

# OpenFrameworks
export PG_OF_PATH=/home/hwan/learn/ofx/of_v20240806_linux64_gcc6_release
