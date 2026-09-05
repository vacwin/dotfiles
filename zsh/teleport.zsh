command -v tsh >/dev/null || return 0

TSH_PROXY="tp.24h.tv:443"
TSH_HOSTS_CACHE="${ZSH_CACHE_DIR:-${XDG_CACHE_HOME:-$HOME/.cache}/zsh}/tsh-hosts"
TSH_HOSTS_TTL=3600
TSH_HOSTS_TIMEOUT=5

zmodload -F zsh/stat b:zstat
zmodload zsh/datetime

_tsh_hosts_refresh() {
  setopt localoptions no_notify no_monitor
  local tmp="$TSH_HOSTS_CACHE.$$"
  command tsh ls -f names >"$tmp" 2>/dev/null &
  local pid=$! i
  for (( i = 0; i < TSH_HOSTS_TIMEOUT * 5; i++ )); do
    kill -0 $pid 2>/dev/null || break
    sleep 0.2
  done
  kill -0 $pid 2>/dev/null && kill -TERM $pid 2>/dev/null
  wait $pid 2>/dev/null
  if [[ -s "$tmp" ]]; then
    mv -f "$tmp" "$TSH_HOSTS_CACHE"
  else
    rm -f "$tmp"
    return 1
  fi
}

_tsh_hosts_list() {
  local -a st
  if ! zstat -A st +mtime "$TSH_HOSTS_CACHE" 2>/dev/null ||
     (( EPOCHSECONDS - st[1] > TSH_HOSTS_TTL )); then
    _tsh_hosts_refresh
  fi
  [[ -s "$TSH_HOSTS_CACHE" ]] && cat "$TSH_HOSTS_CACHE"
}

_tsh_hostnames() {
  local -a hosts
  hosts=(${(f)"$(_tsh_hosts_list)"})
  (( $#hosts )) || return 1
  compset -P '*@'
  _describe -t tsh-hosts 'teleport host' hosts
}

_tsh() {
  if [[ ${words[2]} == ssh ]]; then
    local -a args
    args=(${words[3,CURRENT-1]:#-*})
    (( $#args == 0 )) && { _tsh_hostnames && return }
  fi
  local -a matches
  matches=(${(f)"$(command tsh --completion-bash "${(@)words[2,$CURRENT]}" 2>/dev/null)"})
  compadd -a matches
}

_tssh() {
  local -a args
  args=(${words[2,CURRENT-1]:#-*})
  (( $#args == 0 )) && { _tsh_hostnames; return }
  _default
}

compdef _tsh tsh
compdef _tssh tssh

tlogin() { command tsh login --proxy="$TSH_PROXY" "$@" && _tsh_hosts_refresh }

thosts() {
  case "$1" in
    -r|--refresh)
      rm -f "$TSH_HOSTS_CACHE"
      _tsh_hosts_list >/dev/null
      print -r -- "хостов в кэше: $(wc -l < $TSH_HOSTS_CACHE 2>/dev/null || print 0)" ;;
    *)
      _tsh_hosts_list ;;
  esac
}
