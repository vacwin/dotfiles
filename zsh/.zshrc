case "$(uname -s)" in
  Linux*)  OS=Linux ;;
  Darwin*) OS=Mac ;;
  *)       OS=unknown ;;
esac

# colors
PS1='%B%F{red}[%F{yellow}%n%F{green}@%F{blue}%M %F{magenta}%~${vcs_info_msg_0_}%F{red}]%f$%b '

# history
HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

setopt extended_history      
setopt hist_ignore_dups      
setopt hist_ignore_space     
setopt hist_verify           
setopt share_history         

setopt auto_cd               
setopt interactive_comments  

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit -d "${ZDOTDIR:-$HOME}/.zcompdump"
_comp_options+=(globdots)

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '%F{red}● %F{yellow}'
zstyle ':vcs_info:git:*' stagedstr   '%F{green}● %F{yellow}'
zstyle ':vcs_info:git:*' formats       ' %F{yellow}‹%u%c%b›%f'
zstyle ':vcs_info:git:*' actionformats ' %F{yellow}‹%u%c%b|%a›%f'
precmd_functions+=(vcs_info)
setopt prompt_subst


# aliases
if [[ "$OS" == "Mac" ]]; then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi
alias ll='ls -lah'
alias -- -='cd -'
alias sp="spotify"
alias fix-gpg='gpgconf --kill gpg-agent && export GPG_TTY="$(tty)" && export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket) && gpgconf --launch gpg-agent && gpg-connect-agent updatestartuptty /bye > /dev/null && echo "done"'

# fzf
if [[ "$OS" == "Mac" ]]; then
  FZF_SHELL="$(brew --prefix 2>/dev/null)/opt/fzf/shell"
elif [[ "$OS" == "Linux" ]]; then
  FZF_SHELL="/usr/share/fzf"
fi
if [[ -d "$FZF_SHELL" ]]; then
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
