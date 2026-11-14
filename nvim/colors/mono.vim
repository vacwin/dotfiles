" Generated from themes/mono.conf by scripts/theme. Do not edit.

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mono'

if &background == 'light'
  let s:bg        = '#e7e6e3'
  let s:surface = '#deddda'
  let s:surface_hover  = '#d4d3d0'
  let s:border    = '#c8c7c4'
  let s:text_faint       = '#9a9996'
  let s:text_subtle     = '#7c7b78'
  let s:text_muted     = '#65645f'
  let s:text_tertiary       = '#4f4e4a'
  let s:text_secondary    = '#3a3936'
  let s:accent_muted      = '#4c4b48'
  let s:accent     = '#000000'
  let s:text        = '#1c1b19'
  let s:critical    = '#000000'
else
  let s:bg        = '#1b1b1a'
  let s:surface = '#242423'
  let s:surface_hover  = '#2e2e2d'
  let s:border    = '#363635'
  let s:text_faint       = '#555553'
  let s:text_subtle     = '#6d6d6a'
  let s:text_muted     = '#8a8a86'
  let s:text_tertiary       = '#a4a4a0'
  let s:text_secondary    = '#c4c4c0'
  let s:accent_muted      = '#b9b8b5'
  let s:accent     = '#fbfaf7'
  let s:text        = '#e6e5e2'
  let s:critical    = '#ffffff'
endif

function! s:hi(group, fg, bg, attr) abort
  let l:cmd = 'highlight ' . a:group
  if !empty(a:fg)
    let l:cmd .= ' guifg=' . a:fg
  endif
  if !empty(a:bg)
    let l:cmd .= ' guibg=' . a:bg
  endif
  if !empty(a:attr)
    let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
  endif
  execute l:cmd
endfunction

" base
call s:hi('Normal', s:text, s:bg, '')
call s:hi('NormalNC', s:text, '', '')
call s:hi('NormalFloat', s:text, s:surface, '')
call s:hi('FloatBorder', s:border, s:surface, '')
call s:hi('FloatTitle', s:accent, s:surface, 'bold')
call s:hi('Cursor', s:bg, s:text, '')
call s:hi('lCursor', s:bg, s:text, '')
call s:hi('CursorLine', '', s:surface_hover, '')
call s:hi('CursorColumn', '', s:surface_hover, '')
call s:hi('ColorColumn', '', s:surface_hover, '')
call s:hi('LineNr', s:text_faint, '', '')
call s:hi('CursorLineNr', s:accent, '', 'bold')
call s:hi('SignColumn', s:text_faint, '', '')
call s:hi('FoldColumn', s:text_faint, '', '')
call s:hi('Folded', s:text_faint, s:surface, '')
call s:hi('VertSplit', s:border, '', '')
call s:hi('WinSeparator', s:border, '', '')
call s:hi('StatusLine', s:text, s:surface, '')
call s:hi('StatusLineNC', s:text_faint, s:bg, '')
call s:hi('TabLine', s:text_faint, s:surface, '')
call s:hi('TabLineFill', s:surface, '', '')
call s:hi('TabLineSel', s:text, s:bg, 'bold')
call s:hi('Pmenu', s:text, s:surface, '')
call s:hi('PmenuSel', s:bg, s:accent, '')
call s:hi('PmenuSbar', '', s:surface, '')
call s:hi('PmenuThumb', '', s:text_faint, '')
call s:hi('Visual', '', s:surface_hover, '')
call s:hi('VisualNOS', '', s:surface_hover, '')
call s:hi('Search', '', s:border, '')
call s:hi('IncSearch', s:bg, s:accent, '')
call s:hi('CurSearch', s:bg, s:accent, '')
call s:hi('MatchParen', s:accent, '', 'bold,underline')
call s:hi('Directory', s:accent, '', '')
call s:hi('Title', s:text, '', 'bold')
call s:hi('NonText', s:text_faint, '', '')
call s:hi('Whitespace', s:text_faint, '', '')
call s:hi('EndOfBuffer', s:bg, '', '')
call s:hi('QuickFixLine', '', s:surface_hover, '')
call s:hi('WildMenu', s:bg, s:accent, '')
call s:hi('Question', s:accent, '', '')
call s:hi('MoreMsg', s:accent, '', '')
call s:hi('ModeMsg', s:text, '', 'bold')
call s:hi('ErrorMsg', s:critical, '', 'bold')
call s:hi('WarningMsg', s:text_secondary, '', '')

" syntax
call s:hi('Comment', s:text_subtle, '', 'italic')
call s:hi('Constant', s:text_secondary, '', '')
call s:hi('String', s:text_secondary, '', '')
call s:hi('Character', s:text_secondary, '', '')
call s:hi('Number', s:accent_muted, '', '')
call s:hi('Boolean', s:accent_muted, '', '')
call s:hi('Float', s:accent_muted, '', '')
call s:hi('Identifier', s:text, '', '')
call s:hi('Function', s:accent, '', '')
call s:hi('Statement', s:text, '', 'bold')
call s:hi('Conditional', s:text, '', 'bold')
call s:hi('Repeat', s:text, '', 'bold')
call s:hi('Label', s:text, '', 'bold')
call s:hi('Keyword', s:text, '', 'bold')
call s:hi('Exception', s:text, '', 'bold')
call s:hi('Operator', s:text_tertiary, '', '')
call s:hi('PreProc', s:accent_muted, '', '')
call s:hi('Include', s:accent_muted, '', '')
call s:hi('Define', s:accent_muted, '', '')
call s:hi('Macro', s:accent_muted, '', '')
call s:hi('PreCondit', s:accent_muted, '', '')
call s:hi('Type', s:text_secondary, '', '')
call s:hi('StorageClass', s:text_secondary, '', '')
call s:hi('Structure', s:text_secondary, '', '')
call s:hi('Typedef', s:text_secondary, '', '')
call s:hi('Special', s:text_muted, '', '')
call s:hi('SpecialChar', s:text_muted, '', '')
call s:hi('Tag', s:text_muted, '', '')
call s:hi('Delimiter', s:text_tertiary, '', '')
call s:hi('SpecialComment', s:text_subtle, '', 'italic')
call s:hi('Debug', s:text_muted, '', '')
call s:hi('Underlined', s:accent, '', 'underline')
call s:hi('Ignore', s:text_faint, '', '')
call s:hi('Error', s:critical, '', 'bold')
call s:hi('Todo', s:text_secondary, '', 'bold')

" diff
call s:hi('DiffAdd', s:accent_muted, '', '')
call s:hi('DiffChange', s:text_secondary, '', '')
call s:hi('DiffDelete', s:text_tertiary, s:surface, '')
call s:hi('DiffText', s:accent, s:surface_hover, 'bold')

" diagnostics
call s:hi('DiagnosticError', s:critical, '', '')
call s:hi('DiagnosticWarn', s:text_secondary, '', '')
call s:hi('DiagnosticInfo', s:text_muted, '', '')
call s:hi('DiagnosticHint', s:text_subtle, '', '')
call s:hi('DiagnosticOk', s:accent_muted, '', '')
call s:hi('DiagnosticUnderlineError', s:critical, '', 'underline')
call s:hi('DiagnosticUnderlineWarn', s:text_secondary, '', 'underline')
call s:hi('DiagnosticUnderlineInfo', s:text_muted, '', 'underline')
call s:hi('DiagnosticUnderlineHint', s:text_subtle, '', 'underline')

" references
call s:hi('LspReferenceText', '', s:surface_hover, '')
call s:hi('LspReferenceRead', '', s:surface_hover, '')
call s:hi('LspReferenceWrite', '', s:surface_hover, '')

" terminal palette (neovim)
if has('nvim')
  let g:terminal_color_0  = '#101010'
  let g:terminal_color_8  = '#555553'
  if &background == 'light'
    let g:terminal_color_0  = '#1c1b19'
    let g:terminal_color_1  = '#4f4e4a'
    let g:terminal_color_2  = '#666560'
    let g:terminal_color_3  = '#7d7c79'
    let g:terminal_color_4  = '#3a3936'
    let g:terminal_color_5  = '#8f8e8b'
    let g:terminal_color_6  = '#565550'
    let g:terminal_color_7  = '#a5a4a0'
    let g:terminal_color_8  = '#3a3936'
    let g:terminal_color_9  = '#4f4e4a'
    let g:terminal_color_10 = '#666560'
    let g:terminal_color_11 = '#7d7c79'
    let g:terminal_color_12 = '#2a2927'
    let g:terminal_color_13 = '#8f8e8b'
    let g:terminal_color_14 = '#565550'
    let g:terminal_color_15 = '#cfcecb'
  else
    let g:terminal_color_1  = '#a4a4a0'
    let g:terminal_color_2  = '#8a8a86'
    let g:terminal_color_3  = '#c4c4c0'
    let g:terminal_color_4  = '#fbfaf7'
    let g:terminal_color_5  = '#6d6d6a'
    let g:terminal_color_6  = '#b9b8b5'
    let g:terminal_color_7  = '#e6e5e2'
    let g:terminal_color_9  = '#a4a4a0'
    let g:terminal_color_10 = '#8a8a86'
    let g:terminal_color_11 = '#c4c4c0'
    let g:terminal_color_12 = '#ffffff'
    let g:terminal_color_13 = '#6d6d6a'
    let g:terminal_color_14 = '#b9b8b5'
    let g:terminal_color_15 = '#ffffff'
  endif
endif
