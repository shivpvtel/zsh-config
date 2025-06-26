# -------------------------------------
# Oh My Zsh & Starship Prompt Setup
# -------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""  # Starship replaces the theme visuals
plugins=(git)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

# -------------------------------------
# Aliases
# -------------------------------------
alias python="python3"
alias ll="ls -lah"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gco="git checkout"
alias gp="git push"
alias gl="git pull"
alias cls="clear"
alias ..="cd .."
alias ...="cd ../.."
alias code.="code ."

# -------------------------------------
# Custom Functions
# -------------------------------------
mkcd() { mkdir -p "$1" && cd "$1"; }
extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xjf "$1" ;;
      *.tar.gz)  tar xzf "$1" ;;
      *.zip)     unzip "$1" ;;
      *)         echo "'$1' cannot be extracted" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias hist="history | fzf"

# -------------------------------------
# Node Version Manager (NVM)
# -------------------------------------
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.nvm}"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# -------------------------------------
# Plugin Settings
# -------------------------------------
CASE_SENSITIVE="false"

# -------------------------------------
# Developer Power Tools
# -------------------------------------
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -s /opt/homebrew/etc/profile.d/autojump.sh ]] && . /opt/homebrew/etc/profile.d/autojump.sh

# -------------------------------------
# Preferred Editor
# -------------------------------------
export EDITOR="nvim"

# -------------------------------------
# Neofetch on Interactive Shell
# -------------------------------------
if [[ $- == *i* ]]; then
  neofetch
fi
