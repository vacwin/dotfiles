" Generated from themes/{{name}}.conf by scripts/theme. Do not edit.

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mono'

if &background == 'light'
  let s:bg        = '{{light_bg}}'
  let s:bg_raised = '{{light_bg_raised}}'
  let s:bg_hover  = '{{light_bg_hover}}'
  let s:border    = '{{light_border}}'
  let s:ash       = '{{light_ash}}'
  let s:slate     = '{{light_slate}}'
  let s:steel     = '{{light_steel}}'
  let s:dim       = '{{light_dim}}'
  let s:silver    = '{{light_silver}}'
  let s:teal      = '{{light_teal}}'
  let s:frost     = '{{light_frost}}'
  let s:fg        = '{{light_fg}}'
  let s:urgent    = '{{light_urgent}}'
else
  let s:bg        = '{{dark_bg}}'
  let s:bg_raised = '{{dark_bg_raised}}'
  let s:bg_hover  = '{{dark_bg_hover}}'
  let s:border    = '{{dark_border}}'
  let s:ash       = '{{dark_ash}}'
  let s:slate     = '{{dark_slate}}'
  let s:steel     = '{{dark_steel}}'
  let s:dim       = '{{dark_dim}}'
  let s:silver    = '{{dark_silver}}'
  let s:teal      = '{{dark_teal}}'
  let s:frost     = '{{dark_frost}}'
  let s:fg        = '{{dark_fg}}'
  let s:urgent    = '{{dark_urgent}}'
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
call s:hi('Normal', s:fg, s:bg, '')
call s:hi('NormalNC', s:fg, '', '')
call s:hi('NormalFloat', s:fg, s:bg_raised, '')
call s:hi('FloatBorder', s:border, s:bg_raised, '')
call s:hi('FloatTitle', s:frost, s:bg_raised, 'bold')
call s:hi('Cursor', s:bg, s:fg, '')
call s:hi('lCursor', s:bg, s:fg, '')
call s:hi('CursorLine', '', s:bg_hover, '')
call s:hi('CursorColumn', '', s:bg_hover, '')
call s:hi('ColorColumn', '', s:bg_hover, '')
call s:hi('LineNr', s:ash, '', '')
call s:hi('CursorLineNr', s:frost, '', 'bold')
call s:hi('SignColumn', s:ash, '', '')
call s:hi('FoldColumn', s:ash, '', '')
call s:hi('Folded', s:ash, s:bg_raised, '')
call s:hi('VertSplit', s:border, '', '')
call s:hi('WinSeparator', s:border, '', '')
call s:hi('StatusLine', s:fg, s:bg_raised, '')
call s:hi('StatusLineNC', s:ash, s:bg, '')
call s:hi('TabLine', s:ash, s:bg_raised, '')
call s:hi('TabLineFill', s:bg_raised, '', '')
call s:hi('TabLineSel', s:fg, s:bg, 'bold')
call s:hi('Pmenu', s:fg, s:bg_raised, '')
call s:hi('PmenuSel', s:bg, s:frost, '')
call s:hi('PmenuSbar', '', s:bg_raised, '')
call s:hi('PmenuThumb', '', s:ash, '')
call s:hi('Visual', '', s:bg_hover, '')
call s:hi('VisualNOS', '', s:bg_hover, '')
call s:hi('Search', '', s:border, '')
call s:hi('IncSearch', s:bg, s:frost, '')
call s:hi('CurSearch', s:bg, s:frost, '')
call s:hi('MatchParen', s:frost, '', 'bold,underline')
call s:hi('Directory', s:frost, '', '')
call s:hi('Title', s:fg, '', 'bold')
call s:hi('NonText', s:ash, '', '')
call s:hi('Whitespace', s:ash, '', '')
call s:hi('EndOfBuffer', s:bg, '', '')
call s:hi('QuickFixLine', '', s:bg_hover, '')
call s:hi('WildMenu', s:bg, s:frost, '')
call s:hi('Question', s:frost, '', '')
call s:hi('MoreMsg', s:frost, '', '')
call s:hi('ModeMsg', s:fg, '', 'bold')
call s:hi('ErrorMsg', s:urgent, '', 'bold')
call s:hi('WarningMsg', s:silver, '', '')

" syntax
call s:hi('Comment', s:slate, '', 'italic')
call s:hi('Constant', s:silver, '', '')
call s:hi('String', s:silver, '', '')
call s:hi('Character', s:silver, '', '')
call s:hi('Number', s:teal, '', '')
call s:hi('Boolean', s:teal, '', '')
call s:hi('Float', s:teal, '', '')
call s:hi('Identifier', s:fg, '', '')
call s:hi('Function', s:frost, '', '')
call s:hi('Statement', s:fg, '', 'bold')
call s:hi('Conditional', s:fg, '', 'bold')
call s:hi('Repeat', s:fg, '', 'bold')
call s:hi('Label', s:fg, '', 'bold')
call s:hi('Keyword', s:fg, '', 'bold')
call s:hi('Exception', s:fg, '', 'bold')
call s:hi('Operator', s:dim, '', '')
call s:hi('PreProc', s:teal, '', '')
call s:hi('Include', s:teal, '', '')
call s:hi('Define', s:teal, '', '')
call s:hi('Macro', s:teal, '', '')
call s:hi('PreCondit', s:teal, '', '')
call s:hi('Type', s:silver, '', '')
call s:hi('StorageClass', s:silver, '', '')
call s:hi('Structure', s:silver, '', '')
call s:hi('Typedef', s:silver, '', '')
call s:hi('Special', s:steel, '', '')
call s:hi('SpecialChar', s:steel, '', '')
call s:hi('Tag', s:steel, '', '')
call s:hi('Delimiter', s:dim, '', '')
call s:hi('SpecialComment', s:slate, '', 'italic')
call s:hi('Debug', s:steel, '', '')
call s:hi('Underlined', s:frost, '', 'underline')
call s:hi('Ignore', s:ash, '', '')
call s:hi('Error', s:urgent, '', 'bold')
call s:hi('Todo', s:silver, '', 'bold')

" diff
call s:hi('DiffAdd', s:teal, '', '')
call s:hi('DiffChange', s:silver, '', '')
call s:hi('DiffDelete', s:dim, s:bg_raised, '')
call s:hi('DiffText', s:frost, s:bg_hover, 'bold')

" diagnostics
call s:hi('DiagnosticError', s:urgent, '', '')
call s:hi('DiagnosticWarn', s:silver, '', '')
call s:hi('DiagnosticInfo', s:steel, '', '')
call s:hi('DiagnosticHint', s:slate, '', '')
call s:hi('DiagnosticOk', s:teal, '', '')
call s:hi('DiagnosticUnderlineError', s:urgent, '', 'underline')
call s:hi('DiagnosticUnderlineWarn', s:silver, '', 'underline')
call s:hi('DiagnosticUnderlineInfo', s:steel, '', 'underline')
call s:hi('DiagnosticUnderlineHint', s:slate, '', 'underline')

" references
call s:hi('LspReferenceText', '', s:bg_hover, '')
call s:hi('LspReferenceRead', '', s:bg_hover, '')
call s:hi('LspReferenceWrite', '', s:bg_hover, '')

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
