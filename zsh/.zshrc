# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
alias vim="nvim"
alias fix-gpg='gpgconf --kill gpg-agent && export GPG_TTY="$(tty)" && export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket) && gpgconf --launch gpg-agent && gpg-connect-agent updatestartuptty /bye > /dev/null && echo "done"'
# system's path
if [[ "$OS" == "Mac" ]]; then
  export NOTES_DIR=~/pd/obsidian-notes
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
	export PATH="$HOME/go/bin:$PATH"
  export JAVA_HOME=/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home
  export PATH="$JAVA_HOME/bin:$PATH"
elif [[ "$OS" == "Linux" ]]; then
  export NOTES_DIR=~/obsidian-notes
  export MOZ_ENABLE_WAYLAND=1
  export PATH=$PATH:/usr/local/go/bin
fi

export PATH="$HOME/.local/bin:$PATH"

ssh() {
  tmux rename-window "${1##*@}"
  command ssh "$@"
  tmux rename-window "shell"
}

# cargo / rust
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

# tmux autostart
if [ -z "$TMUX" ]; then
  ~/dotfiles/tmux/startup.sh
fi

showpkm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
