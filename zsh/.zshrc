case "$(uname -s)" in
  Linux*)  OS=Linux ;;
  Darwin*) OS=Mac ;;
  *)       OS=unknown ;;
esac

ZSH_THEME='guts'
if [[ -r "${ZDOTDIR:-$HOME}/themes/$ZSH_THEME.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/themes/$ZSH_THEME.zsh"
else
  source "${ZDOTDIR:-$HOME}/themes/ansi.zsh"
fi

# colors
PS1="%B%F{$ZT_BRACKET}[%F{$ZT_USER}%n%F{$ZT_AT}@%F{$ZT_HOST}%m %F{$ZT_PATH}%~\${vcs_info_msg_0_}%F{$ZT_BRACKET}]%f\$%b "

# history
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
ZSH_STATE_DIR="${XDG_STATE_HOME:-$HOME/.local/state}/zsh"
mkdir -p "$ZSH_CACHE_DIR" "$ZSH_STATE_DIR"

HISTFILE="$ZSH_STATE_DIR/history"
HISTSIZE=50000
SAVEHIST=50000

setopt extended_history      
setopt hist_ignore_dups      
setopt hist_ignore_space     
setopt hist_verify           
setopt share_history         

setopt auto_cd
setopt interactive_comments

# vi-mode
bindkey -v
KEYTIMEOUT=1

_vi_cursor_shape() {
  case $KEYMAP in
    vicmd) printf '\e[2 q' ;;
    *)     printf '\e[6 q' ;;
  esac
}
_vi_cursor_reset() { printf '\e[6 q' }
zle -N zle-keymap-select _vi_cursor_shape
zle -N zle-line-init     _vi_cursor_shape
preexec_functions+=(_vi_cursor_reset)

# linux like hotkeys
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins '^W' backward-kill-word
bindkey -M viins '^U' backward-kill-line
bindkey -M viins '^K' kill-line
bindkey -M viins '^Y' yank
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^N' down-line-or-history
bindkey -M viins '^?' backward-delete-char

# tab completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit -d "$ZSH_CACHE_DIR/zcompdump-$ZSH_VERSION"
_comp_options+=(globdots)

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey -M viins      '^[[Z' reverse-menu-complete

# promt line
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr "%F{$ZT_UNSTAGED}● %F{$ZT_GIT}"
zstyle ':vcs_info:git:*' stagedstr   "%F{$ZT_STAGED}● %F{$ZT_GIT}"
zstyle ':vcs_info:git:*' formats       " %F{$ZT_GIT}‹%u%c%b›%f"
zstyle ':vcs_info:git:*' actionformats " %F{$ZT_GIT}‹%u%c%b|%a›%f"
precmd_functions+=(vcs_info)
setopt prompt_subst

# lf
lfcd() {
  local dir
  dir="$(command lf -print-last-dir "$@")"
  [[ -d "$dir" ]] && cd "$dir"
}
bindkey -M viins -s '^O' 'lfcd\n'

# aliases
if [[ "$OS" == "Mac" ]]; then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi
alias ll='ls -lah'
alias -- -='cd -'
alias fix-gpg='gpgconf --kill gpg-agent && export GPG_TTY="$(tty)" && export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket) && gpgconf --launch gpg-agent && gpg-connect-agent updatestartuptty /bye > /dev/null && echo "done"'
alias tssh='tsh ssh'
alias tlogin='tsh login --proxy=tp.24h.tv:443'

# fzf
if [[ "$OS" == "Mac" ]]; then
  FZF_SHELL="$(brew --prefix 2>/dev/null)/opt/fzf/shell"
elif [[ "$OS" == "Linux" ]]; then
  FZF_SHELL="/usr/share/fzf"
fi

if [[ -d "$FZF_SHELL" ]]; then
  fzf_default_completion='menu-select'
  source "$FZF_SHELL/key-bindings.zsh"
  source "$FZF_SHELL/completion.zsh"
fi
unset FZF_SHELL

# WORK
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
  command ssh -p 2424 "$@"
}

_docker_ansible_combine.sh() {
  if (( CURRENT == 2 )); then
    local -a vals
    vals=("${(@s: :)$(
      awk -F'[()]' '/^readonly VALID_PLATFORMS=\(/ {print $2; exit}' $HOME/wd/ansible/docker_ansible_combine.sh
    )}")
    _describe -t values 'values' vals
    return 0
  fi
  if (( CURRENT == 4 )); then
    local -a vals
    vals=("${(@s: :)$(
      grep -oE "^  [a-z_]+\)" $HOME/wd/ansible/docker_ansible_combine.sh | grep -oE "[a-z_]+" | tr '\n' ' '
    )}")
    _describe -t values 'values' vals
    return 0
  fi

  return 0
}

compdef _docker_ansible_combine.sh docker_ansible_combine.sh

_docker_fronts.sh() {
  if (( CURRENT == 2 )); then
    local -a vals
    vals=("${(@s: :)$(
      awk -F'[()]' '/^readonly VALID_PLATFORMS=\(/ {print $2; exit}' $HOME/wd/ansible/docker_fronts.sh
    )}")
    _describe -t values 'values' vals
    return 0
  fi
  if (( CURRENT == 3 )); then
    local -a vals
    vals=("${(@s: :)$(
      grep -oE "^  [a-z_]+\)" $HOME/wd/ansible/docker_fronts.sh | grep -oE "[a-z_]+" | tr '\n' ' '
    )}")
    _describe -t values 'values' vals
    return 0
  fi

  return 0
}

compdef _docker_fronts.sh docker_fronts.sh

# плагины
if [[ "$OS" == "Mac" ]]; then
  ZSH_PLUGINS="/opt/homebrew/share"
elif [[ "$OS" == "Linux" ]]; then
  ZSH_PLUGINS="/usr/share/zsh/plugins"
fi
if [[ -r "$ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source "$ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi
if [[ -r "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi
unset ZSH_PLUGINS

showpkm
