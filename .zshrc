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

# Aliases
alias l="lsd"
alias ls="lsd -l"
alias la="lsd -a"
alias lsa="lsd -la"
alias lt="l --tree"
alias wtf='echo "🤦"'
alias history='history 1 -1'

# Man coloring
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Plugins
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
