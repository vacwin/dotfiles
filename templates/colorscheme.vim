" Generated from themes/{{name}}.conf by scripts/theme. Do not edit.

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mono'

if &background == 'light'
  let s:bg        = '{{light_bg}}'
  let s:surface = '{{light_surface}}'
  let s:surface_hover  = '{{light_surface_hover}}'
  let s:border    = '{{light_border}}'
  let s:text_faint       = '{{light_text_faint}}'
  let s:text_subtle     = '{{light_text_subtle}}'
  let s:text_muted     = '{{light_text_muted}}'
  let s:text_tertiary       = '{{light_text_tertiary}}'
  let s:text_secondary    = '{{light_text_secondary}}'
  let s:accent_muted      = '{{light_accent_muted}}'
  let s:accent     = '{{light_accent}}'
  let s:text        = '{{light_text}}'
  let s:critical    = '{{light_critical}}'
else
  let s:bg        = '{{dark_bg}}'
  let s:surface = '{{dark_surface}}'
  let s:surface_hover  = '{{dark_surface_hover}}'
  let s:border    = '{{dark_border}}'
  let s:text_faint       = '{{dark_text_faint}}'
  let s:text_subtle     = '{{dark_text_subtle}}'
  let s:text_muted     = '{{dark_text_muted}}'
  let s:text_tertiary       = '{{dark_text_tertiary}}'
  let s:text_secondary    = '{{dark_text_secondary}}'
  let s:accent_muted      = '{{dark_accent_muted}}'
  let s:accent     = '{{dark_accent}}'
  let s:text        = '{{dark_text}}'
  let s:critical    = '{{dark_critical}}'
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
  let g:terminal_color_0  = '{{dark_ansi0}}'
  let g:terminal_color_8  = '{{dark_ansi8}}'
  if &background == 'light'
    let g:terminal_color_0  = '{{light_ansi0}}'
    let g:terminal_color_1  = '{{light_ansi1}}'
    let g:terminal_color_2  = '{{light_ansi2}}'
    let g:terminal_color_3  = '{{light_ansi3}}'
    let g:terminal_color_4  = '{{light_ansi4}}'
    let g:terminal_color_5  = '{{light_ansi5}}'
    let g:terminal_color_6  = '{{light_ansi6}}'
    let g:terminal_color_7  = '{{light_ansi7}}'
    let g:terminal_color_8  = '{{light_ansi8}}'
    let g:terminal_color_9  = '{{light_ansi9}}'
    let g:terminal_color_10 = '{{light_ansi10}}'
    let g:terminal_color_11 = '{{light_ansi11}}'
    let g:terminal_color_12 = '{{light_ansi12}}'
    let g:terminal_color_13 = '{{light_ansi13}}'
    let g:terminal_color_14 = '{{light_ansi14}}'
    let g:terminal_color_15 = '{{light_ansi15}}'
  else
    let g:terminal_color_1  = '{{dark_ansi1}}'
    let g:terminal_color_2  = '{{dark_ansi2}}'
    let g:terminal_color_3  = '{{dark_ansi3}}'
    let g:terminal_color_4  = '{{dark_ansi4}}'
    let g:terminal_color_5  = '{{dark_ansi5}}'
    let g:terminal_color_6  = '{{dark_ansi6}}'
    let g:terminal_color_7  = '{{dark_ansi7}}'
    let g:terminal_color_9  = '{{dark_ansi9}}'
    let g:terminal_color_10 = '{{dark_ansi10}}'
    let g:terminal_color_11 = '{{dark_ansi11}}'
    let g:terminal_color_12 = '{{dark_ansi12}}'
    let g:terminal_color_13 = '{{dark_ansi13}}'
    let g:terminal_color_14 = '{{dark_ansi14}}'
    let g:terminal_color_15 = '{{dark_ansi15}}'
  endif
endif
