typeset -g POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
case "$(uname -s)" in 
  Linux*) OS=Linux ;;
  Darwin*) OS=Mac ;;
  *) OS="unknown" ;;
esac
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
plugins=(
	git
  	zsh-autosuggestions
	zsh-syntax-highlighting
)
# mac plugins
if [[ "$OS" == "Mac" ]]; then
  plugins+=(
    brew
    macos
  )
fi
# reload config
source $ZSH/oh-my-zsh.sh
# aliases
alias sp="spotify"
# system's path
if [[ "$OS" == "Mac" ]]; then
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
  export JAVA_HOME=/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home
  export PATH="$JAVA_HOME/bin:$PATH"
elif [[ "$OS" == "Linux" ]]; then
  export MOZ_ENABLE_WAYLAND=1
fi
export PATH="$HOME/.local/bin:$PATH"

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec sway
fi
