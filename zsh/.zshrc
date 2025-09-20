typeset -g POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# определение системы
case "$(uname -s)" in 
  Linux*) OS=Linux ;;
  Darwin*) OS=Mac ;;
  *) OS="unknow" ;;
esac
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
plugins=(
  git zsh-syntax-highlighting 
  zsh-autosuggestions
  tmux
)
# mac plugins
if [[ "$OS" == "Mac" ]]; then
  plugins+=(
    brew
    macos
  )
fi
# linux plugins
if [[ "$OS" == "Linux" ]]; then
fi
# reload config
source $ZSH/oh-my-zsh.sh
# aliases
alias kssh="kitten ssh"
alias sp="spotify"
alias cs="console_sudoku"
# system's path
if [[ "$OS" == "Mac" ]]; then
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
elif [[ "$OS" == "Linux" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi
