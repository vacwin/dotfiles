" Generated from themes/mono.conf by scripts/theme. Do not edit.

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mono'

if &background == 'light'
  let s:bg        = '#e7e6e3'
  let s:bg_raised = '#deddda'
  let s:bg_hover  = '#d4d3d0'
  let s:border    = '#c8c7c4'
  let s:ash       = '#9a9996'
  let s:slate     = '#7c7b78'
  let s:steel     = '#65645f'
  let s:dim       = '#4f4e4a'
  let s:silver    = '#3a3936'
  let s:teal      = '#4c4b48'
  let s:frost     = '#000000'
  let s:fg        = '#1c1b19'
  let s:urgent    = '#000000'
else
  let s:bg        = '#1b1b1a'
  let s:bg_raised = '#242423'
  let s:bg_hover  = '#2e2e2d'
  let s:border    = '#363635'
  let s:ash       = '#555553'
  let s:slate     = '#6d6d6a'
  let s:steel     = '#8a8a86'
  let s:dim       = '#a4a4a0'
  let s:silver    = '#c4c4c0'
  let s:teal      = '#b9b8b5'
  let s:frost     = '#fbfaf7'
  let s:fg        = '#e6e5e2'
  let s:urgent    = '#ffffff'
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
