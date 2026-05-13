'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'

() {
  emulate -L zsh -o extended_glob
  unset -m '(POWERLEVEL9K_*|DEFAULT_USER)~POWERLEVEL9K_GITSTATUS_DIR'
  [[ $ZSH_VERSION == (5.<1->*|<6->.*) ]] || return

  # ── Khold palette ────────────────────────────────────────────────────────
  local khold_bg0='#000000'        # base00
  local khold_bg1='#121212'        # base01
  local khold_bg2='#222222'        # base02
  local khold_bg3='#333333'        # base03
  local khold_fg='#c1c1c1'         # base05
  local khold_secondary='#999999'  # base04
  local khold_accent='#5f8787'     # base08  success / dir
  local khold_error='#974b46'      # base0A  error / root
  local khold_strings='#eceee3'    # base0B
  local khold_vcs='#888888'        # base0D
  local khold_alt='#aaaaaa'        # base09

  # ── Segments ─────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    os_icon
    dir
    vcs
    newline
    prompt_char
  )
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    status
    command_execution_time
    background_jobs
    go_version
    context
  )

  # ── Mode / icons ─────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_MODE=nerdfont-v3
  typeset -g POWERLEVEL9K_ICON_PADDING=none
  typeset -g POWERLEVEL9K_ICON_BEFORE_CONTENT=

  # ── Two-line frame with rounded corners ─────────────────────────────────
  typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{$khold_bg3}╭─"
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{$khold_bg3}╰─"
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX="%F{$khold_bg3}─╮"
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX="%F{$khold_bg3}─╯"
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR=' '

  # ── Slanted separators / caps ───────────────────────────────────────────
  typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0BC'
  typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0BA'
  typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\uE0BD'
  typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\uE0BB'
  typeset -g POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL='▓▒░'
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL='░▒▓'
  typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL='\uE0BA'
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL='\uE0BC'

  # ── os_icon (apple plate) ───────────────────────────────────────────────
  typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=$khold_bg2

  # ── dir ──────────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_DIR_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_DIR_BACKGROUND=$khold_accent
  typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=$khold_bg3
  typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=$khold_strings
  typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true
  typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_unique
  typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
  typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=80
  typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS=40
  typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT=50
  typeset -g POWERLEVEL9K_DIR_HYPERLINK=false
  typeset -g POWERLEVEL9K_DIR_SHOW_WRITABLE=v3

  # ── vcs ──────────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=$khold_bg0
  typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND=$khold_vcs
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=$khold_bg0
  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$khold_alt
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=$khold_bg0
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$khold_vcs
  typeset -g POWERLEVEL9K_VCS_CONFLICTED_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_VCS_CONFLICTED_BACKGROUND=$khold_error
  typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND=$khold_secondary
  typeset -g POWERLEVEL9K_VCS_LOADING_BACKGROUND=$khold_bg2
  typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=' '
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
  typeset -g POWERLEVEL9K_VCS_MODIFIED_ICON='●'
  typeset -g POWERLEVEL9K_VCS_BACKENDS=(git)

  # ── prompt char (arrow, reacts to $?) ───────────────────────────────────
  typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=$khold_accent
  typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=$khold_error
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='❯'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='❮'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION='V'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_CONTENT_EXPANSION='▶'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_{LEFT,RIGHT}_WHITESPACE=

  # ── status ───────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_STATUS_EXTENDED_STATES=true
  typeset -g POWERLEVEL9K_STATUS_OK=false
  typeset -g POWERLEVEL9K_STATUS_OK_PIPE=false
  typeset -g POWERLEVEL9K_STATUS_ERROR=true
  typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION='✘'
  typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=$khold_error
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL=true
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_VISUAL_IDENTIFIER_EXPANSION='✘'
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_STATUS_ERROR_SIGNAL_BACKGROUND=$khold_error
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE=true
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_VISUAL_IDENTIFIER_EXPANSION='✘'
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_STATUS_ERROR_PIPE_BACKGROUND=$khold_error

  # ── command execution time ──────────────────────────────────────────────
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=$khold_bg0
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=$khold_alt
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'

  # ── background jobs ─────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=$khold_bg2
  typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=false

  # ── go ──────────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_GO_VERSION_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_GO_VERSION_BACKGROUND=$khold_accent
  typeset -g POWERLEVEL9K_GO_VERSION_PROJECT_ONLY=true

  # ── context (user@host) ─────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_CONTEXT_BACKGROUND=$khold_bg2
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=$khold_error
  typeset -g POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND=$khold_fg
  typeset -g POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND=$khold_bg3
  typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%n@%m'
  typeset -g POWERLEVEL9K_CONTEXT_REMOTE_TEMPLATE='%n@%m'
  typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=

  # ── time ────────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_TIME_FOREGROUND=$khold_bg0
  typeset -g POWERLEVEL9K_TIME_BACKGROUND=$khold_fg
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%I:%M %p}'
  typeset -g POWERLEVEL9K_TIME_UPDATE_ON_COMMAND=false

  # ── misc ────────────────────────────────────────────────────────────────
  typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=always
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
  typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=true

  (( ! $+functions[p10k] )) || p10k reload
}

typeset -g POWERLEVEL9K_CONFIG_FILE=${${(%):-%x}:a}
(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
