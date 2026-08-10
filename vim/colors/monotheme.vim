hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'monotheme'

hi Normal         guifg=#ffffff guibg=#000000 ctermfg=NONE ctermbg=NONE
hi NonText        guifg=#424242 ctermfg=8
hi EndOfBuffer    guifg=#424242 ctermfg=8
hi SpecialKey     guifg=#424242 ctermfg=8
hi Conceal        guifg=#6b6b6b ctermfg=8
hi Cursor         guifg=#000000 guibg=#ffffff ctermfg=NONE ctermbg=NONE
hi lCursor        guifg=#000000 guibg=#ffffff ctermfg=NONE ctermbg=NONE
hi CursorLine     guibg=#1a1a1a ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn   guibg=#1a1a1a ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn    guibg=#1a1a1a ctermbg=NONE gui=NONE cterm=NONE
hi LineNr         guifg=#6b6b6b ctermfg=8
hi CursorLineNr   guifg=#b3b3b3 ctermfg=3 gui=bold cterm=bold
hi SignColumn     guifg=#6b6b6b guibg=#000000 ctermfg=8 ctermbg=NONE
hi FoldColumn     guifg=#6b6b6b guibg=#000000 ctermfg=8 ctermbg=NONE
hi Folded         guifg=#6b6b6b guibg=#1a1a1a ctermfg=8 ctermbg=NONE
hi VertSplit      guifg=#424242 guibg=#000000 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen     guifg=#ffffff guibg=#2e2e2e ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi Visual         guifg=#000000 guibg=#ffffff ctermfg=NONE ctermbg=NONE
hi VisualNOS      guifg=#000000 guibg=#ffffff ctermfg=NONE ctermbg=NONE
hi Search         guifg=#000000 guibg=#b3b3b3 ctermfg=0 ctermbg=3
hi IncSearch      guifg=#000000 guibg=#eeeeee ctermfg=0 ctermbg=11
hi CurSearch      guifg=#000000 guibg=#eeeeee ctermfg=0 ctermbg=11
hi QuickFixLine   guibg=#2e2e2e ctermbg=NONE
hi StatusLine     guifg=#ffffff guibg=#1a1a1a ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineNC   guifg=#6b6b6b guibg=#1a1a1a ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLine        guifg=#6b6b6b guibg=#1a1a1a ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel     guifg=#ffffff guibg=#000000 ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi TabLineFill    guifg=#6b6b6b guibg=#1a1a1a ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu       guifg=#000000 guibg=#b3b3b3 ctermfg=0 ctermbg=3
hi Pmenu          guifg=#ffffff guibg=#1a1a1a ctermfg=NONE ctermbg=NONE
hi PmenuSel       guifg=#000000 guibg=#999999 ctermfg=0 ctermbg=4
hi PmenuSbar      guibg=#2e2e2e ctermbg=NONE
hi PmenuThumb     guibg=#6b6b6b ctermbg=8
hi Directory      guifg=#999999 ctermfg=4
hi Title          guifg=#717171 ctermfg=5 gui=bold cterm=bold
hi Question       guifg=#c4c4c4 ctermfg=2
hi MoreMsg        guifg=#c4c4c4 ctermfg=2
hi ModeMsg        guifg=#ffffff ctermfg=NONE gui=bold cterm=bold
hi WarningMsg     guifg=#b3b3b3 ctermfg=3
hi ErrorMsg       guifg=#6b6b6b ctermfg=1
hi Error          guifg=#000000 guibg=#6b6b6b ctermfg=0 ctermbg=1
hi Todo           guifg=#000000 guibg=#b3b3b3 ctermfg=0 ctermbg=3 gui=bold cterm=bold
hi DiffAdd        guifg=#c4c4c4 guibg=#1a1a1a ctermfg=2 ctermbg=NONE
hi DiffChange     guifg=#b3b3b3 guibg=#1a1a1a ctermfg=3 ctermbg=NONE
hi DiffDelete     guifg=#6b6b6b guibg=#1a1a1a ctermfg=1 ctermbg=NONE
hi DiffText       guifg=#000000 guibg=#b3b3b3 ctermfg=0 ctermbg=3
hi Comment        guifg=#6b6b6b ctermfg=8 gui=italic cterm=italic
hi Constant       guifg=#8a8a8a ctermfg=6
hi String         guifg=#c4c4c4 ctermfg=2
hi Character      guifg=#c4c4c4 ctermfg=2
hi Number         guifg=#717171 ctermfg=5
hi Boolean        guifg=#717171 ctermfg=5
hi Float          guifg=#717171 ctermfg=5
hi Identifier     guifg=#999999 ctermfg=4 gui=NONE cterm=NONE
hi Function       guifg=#7c7c7c ctermfg=12
hi Statement      guifg=#6b6b6b ctermfg=1 gui=NONE cterm=NONE
hi Conditional    guifg=#6b6b6b ctermfg=1
hi Repeat         guifg=#6b6b6b ctermfg=1
hi Label          guifg=#6b6b6b ctermfg=1
hi Operator       guifg=#6b6b6b ctermfg=1
hi Keyword        guifg=#6b6b6b ctermfg=1
hi Exception      guifg=#6b6b6b ctermfg=1
hi PreProc        guifg=#717171 ctermfg=5
hi Include        guifg=#717171 ctermfg=5
hi Define         guifg=#717171 ctermfg=5
hi Macro          guifg=#717171 ctermfg=5
hi PreCondit      guifg=#717171 ctermfg=5
hi Type           guifg=#b3b3b3 ctermfg=3 gui=NONE cterm=NONE
hi StorageClass   guifg=#b3b3b3 ctermfg=3
hi Structure      guifg=#b3b3b3 ctermfg=3
hi Typedef        guifg=#b3b3b3 ctermfg=3
hi Special        guifg=#8a8a8a ctermfg=6
hi SpecialComment guifg=#6b6b6b ctermfg=8 gui=bold cterm=bold
hi Delimiter      guifg=#ffffff ctermfg=NONE
hi Tag            guifg=#8a8a8a ctermfg=6
hi Debug          guifg=#6b6b6b ctermfg=1
hi Underlined     guifg=#999999 ctermfg=4 gui=underline cterm=underline
hi Ignore         guifg=#424242 ctermfg=8

hi SpellBad       guifg=NONE guibg=NONE guisp=#6b6b6b gui=undercurl cterm=undercurl
hi SpellCap       guifg=NONE guibg=NONE guisp=#999999 gui=undercurl cterm=undercurl
hi SpellLocal     guifg=NONE guibg=NONE guisp=#8a8a8a gui=undercurl cterm=undercurl
hi SpellRare      guifg=NONE guibg=NONE guisp=#717171 gui=undercurl cterm=undercurl

let g:terminal_ansi_colors = [
      \ '#000000',
      \ '#6b6b6b',
      \ '#c4c4c4',
      \ '#b3b3b3',
      \ '#999999',
      \ '#717171',
      \ '#8a8a8a',
      \ '#b5cabb',
      \ '#202020',
      \ '#464646',
      \ '#f8f8f8',
      \ '#eeeeee',
      \ '#7c7c7c',
      \ '#adadad',
      \ '#c0c0c0',
      \ '#99ac9e',
      \ ]
