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
  export PATH="/Users/vacwin/.terragrunt/bin:$PATH"
elif [[ "$OS" == "Linux" ]]; then
  export NOTES_DIR=~/obsidian-notes
  export MOZ_ENABLE_WAYLAND=1
  export PATH=$PATH:/usr/local/go/bin
fi
export PATH="$HOME/.local/bin:$PATH"

ssh() {
  if [[ -n "$TMUX" ]]; then
    trap 'tmux rename-window "shell"' EXIT INT TERM
    tmux rename-window "${1##*@}"
  fi
  command ssh "$@"
}

wssh() {
  if ! gpg-connect-agent /bye >/dev/null 2>&1; then
    gpgconf --kill gpg-agent
    gpgconf --launch gpg-agent
  fi
  export GPG_TTY="$(tty)"
  export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  gpg-connect-agent updatestartuptty /bye >/dev/null

  if [[ -n "$TMUX" ]]; then
    trap 'tmux rename-window "shell"' EXIT INT TERM
    tmux rename-window "${1##*@}"
  fi
  command ssh "$@"
}

function gitstatus_stop_p9k_() { }

# zsh-syntax-highlighting colors (Khold-friendly)
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[comment]='fg=#888888'
ZSH_HIGHLIGHT_STYLES[default]='fg=#c1c1c1'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#974b46'
ZSH_HIGHLIGHT_STYLES[command]='fg=#5f8787'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#5f8787'
ZSH_HIGHLIGHT_STYLES[function]='fg=#5f8787'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#5f8787'
ZSH_HIGHLIGHT_STYLES[path]='fg=#c1c1c1,underline'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#eceee3'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#eceee3'

# cargo / rust
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

# tmux autostart
if [ -z "$TMUX" ]; then
  ~/dotfiles/tmux/startup.sh
fi

showpkm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# p10k prompt
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh
