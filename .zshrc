if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# определение системы
case "$(uname -s)" in 
  Linux*) OS=Linux ;;
  Darwin*) OS=Mac ;;
  *) OS="unknow" ;;
esac
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
# plugins
plugins=(
  git 
  zsh-syntax-highlighting 
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
# vim mode
bindkey -v
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
