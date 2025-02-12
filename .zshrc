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

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f "/home/hwan/.ghcup/env" ] && . "/home/hwan/.ghcup/env" # ghcup-env

# Exercism function compatible with zsh
exercism () {
    local out
    out=($(command exercism "$@"))
    printf '%s\n' "${out[@]}"
    if [[ $1 == "download" && -d "${out[-1]}" ]]; then
        cd "${out[-1]}" || return 1
    fi
}

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/hwan/.opam/opam-init/init.sh' && . '/home/hwan/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration

eval "$(zoxide init zsh)"

[ -f $ZDOTDIR/.fzf.zsh ] && source $ZDOTDIR/.fzf.zsh
