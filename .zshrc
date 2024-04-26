# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Greeting
tput setaf 5; echo "Talk is cheap. Show me the code."; \
	tput setaf 4; echo "      - Linus Torvalds -\n"

# Eval
eval "$(pyenv init -)"
eval "$(starship init zsh)"

# Open directories with lf and cd in it
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# Aliases
alias l="lsd"
alias ls="lsd -l"
alias la="lsd -a"
alias lsa="lsd -la"
alias lt="l --tree"
alias wtf='echo "🤦"'
alias history='history 1 -1'
alias lo="lfcd"

# Python

alias pydeact="pyenv deactivate && source ~/.zshrc"
alias pyatlas="pyenv activate atlas && source ~/.zshrc"
alias pyvoebs="pyenv activate voebs && source ~/.zshrc"

# Man coloring
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# list all after cd
function list_all() {
  emulate -L zsh
  ls -la
}
if [[ ${chpwd_functions[(r)list_all]} != "list_all" ]];then
  chpwd_functions=(${chpwd_functions[@]} "list_all")
fi

# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# nerd fonts for lf
source ~/.config/lf/icons.zsh
