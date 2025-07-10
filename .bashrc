#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# -- use fd instead of fzf --
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd for listing path candidates
_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory complation
_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
    local command=$1
    shift

    case "$command" in
        cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
        export|unset) fzf --preview "eval 'echo \$' {}"     "$@" ;;
        ssh)          fzf --preview 'dig {}'                "$@" ;;
        *)            fzf --preview "--preview 'bat -n --color=always --line-range :500 {}'" "$@" ;;
    esac
}


#export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
#    --color=fg:#dfdfe0,bg:#393b44,hl:#6bdfff
#    --color=fg+:#dfdfe0,bg+:#393b44,hl+:#6bdfff
#    --color=info:#ffa14f,prompt:#ff8170,pointer:#b281eb
#    --color=marker:#acf2e4,spinner:#b281eb,header:#acf2e4'


export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'


# +---- Bat (better cat) ----+ #
export BAT_THEME=base16

# +---- Eza (better ls) ----+ #
alias ls="eza --color=always --long --git --icons=always"
