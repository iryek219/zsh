source $ZDOTDIR/.aliases
source $ZDOTDIR/completion.zsh

# prompt
fpath=($ZDOTDIR $fpath)
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Directory stack
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

. "$HOME/.local/bin/env"

# added by Nix installer
if [ -e /home/hwan/.nix-profile/etc/profile.d/nix.sh ]; then . /home/hwan/.nix-profile/etc/profile.d/nix.sh; fi 
