hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'forest-blue'

hi Normal         guifg=#e2d8cd guibg=#051519 ctermfg=NONE ctermbg=NONE
hi NonText        guifg=#3e4848 ctermfg=8
hi EndOfBuffer    guifg=#3e4848 ctermfg=8
hi SpecialKey     guifg=#3e4848 ctermfg=8
hi Conceal        guifg=#626765 ctermfg=8
hi Cursor         guifg=#000000 guibg=#9e9ecb ctermfg=NONE ctermbg=NONE
hi lCursor        guifg=#000000 guibg=#9e9ecb ctermfg=NONE ctermbg=NONE
hi CursorLine     guibg=#1b282b ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn   guibg=#1b282b ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn    guibg=#1b282b ctermbg=NONE gui=NONE cterm=NONE
hi LineNr         guifg=#626765 ctermfg=8
hi CursorLineNr   guifg=#1a8e63 ctermfg=3 gui=bold cterm=bold
hi SignColumn     guifg=#626765 guibg=#051519 ctermfg=8 ctermbg=NONE
hi FoldColumn     guifg=#626765 guibg=#051519 ctermfg=8 ctermbg=NONE
hi Folded         guifg=#626765 guibg=#1b282b ctermfg=8 ctermbg=NONE
hi VertSplit      guifg=#3e4848 guibg=#051519 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen     guifg=#e2d8cd guibg=#2d3839 ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi Visual         guifg=#051519 guibg=#e2d8cd ctermfg=NONE ctermbg=NONE
hi VisualNOS      guifg=#051519 guibg=#e2d8cd ctermfg=NONE ctermbg=NONE
hi Search         guifg=#051519 guibg=#1a8e63 ctermfg=0 ctermbg=3
hi IncSearch      guifg=#051519 guibg=#30c85a ctermfg=0 ctermbg=11
hi CurSearch      guifg=#051519 guibg=#30c85a ctermfg=0 ctermbg=11
hi QuickFixLine   guibg=#2d3839 ctermbg=NONE
hi StatusLine     guifg=#e2d8cd guibg=#1b282b ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineNC   guifg=#626765 guibg=#1b282b ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLine        guifg=#626765 guibg=#1b282b ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel     guifg=#e2d8cd guibg=#051519 ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi TabLineFill    guifg=#626765 guibg=#1b282b ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu       guifg=#051519 guibg=#1a8e63 ctermfg=0 ctermbg=3
hi Pmenu          guifg=#e2d8cd guibg=#1b282b ctermfg=NONE ctermbg=NONE
hi PmenuSel       guifg=#051519 guibg=#8ed0ce ctermfg=0 ctermbg=4
hi PmenuSbar      guibg=#2d3839 ctermbg=NONE
hi PmenuThumb     guibg=#626765 ctermbg=8
hi Directory      guifg=#8ed0ce ctermfg=4
hi Title          guifg=#5e468c ctermfg=5 gui=bold cterm=bold
hi Question       guifg=#92d3a2 ctermfg=2
hi MoreMsg        guifg=#92d3a2 ctermfg=2
hi ModeMsg        guifg=#e2d8cd ctermfg=NONE gui=bold cterm=bold
hi WarningMsg     guifg=#1a8e63 ctermfg=3
hi ErrorMsg       guifg=#f8818e ctermfg=1
hi Error          guifg=#051519 guibg=#f8818e ctermfg=0 ctermbg=1
hi Todo           guifg=#051519 guibg=#1a8e63 ctermfg=0 ctermbg=3 gui=bold cterm=bold
hi DiffAdd        guifg=#92d3a2 guibg=#1b282b ctermfg=2 ctermbg=NONE
hi DiffChange     guifg=#1a8e63 guibg=#1b282b ctermfg=3 ctermbg=NONE
hi DiffDelete     guifg=#f8818e guibg=#1b282b ctermfg=1 ctermbg=NONE
hi DiffText       guifg=#051519 guibg=#1a8e63 ctermfg=0 ctermbg=3
hi Comment        guifg=#626765 ctermfg=8 gui=italic cterm=italic
hi Constant       guifg=#31658c ctermfg=6
hi String         guifg=#92d3a2 ctermfg=2
hi Character      guifg=#92d3a2 ctermfg=2
hi Number         guifg=#5e468c ctermfg=5
hi Boolean        guifg=#5e468c ctermfg=5
hi Float          guifg=#5e468c ctermfg=5
hi Identifier     guifg=#8ed0ce ctermfg=4 gui=NONE cterm=NONE
hi Function       guifg=#39a7a2 ctermfg=12
hi Statement      guifg=#f8818e ctermfg=1 gui=NONE cterm=NONE
hi Conditional    guifg=#f8818e ctermfg=1
hi Repeat         guifg=#f8818e ctermfg=1
hi Label          guifg=#f8818e ctermfg=1
hi Operator       guifg=#f8818e ctermfg=1
hi Keyword        guifg=#f8818e ctermfg=1
hi Exception      guifg=#f8818e ctermfg=1
hi PreProc        guifg=#5e468c ctermfg=5
hi Include        guifg=#5e468c ctermfg=5
hi Define         guifg=#5e468c ctermfg=5
hi Macro          guifg=#5e468c ctermfg=5
hi PreCondit      guifg=#5e468c ctermfg=5
hi Type           guifg=#1a8e63 ctermfg=3 gui=NONE cterm=NONE
hi StorageClass   guifg=#1a8e63 ctermfg=3
hi Structure      guifg=#1a8e63 ctermfg=3
hi Typedef        guifg=#1a8e63 ctermfg=3
hi Special        guifg=#31658c ctermfg=6
hi SpecialComment guifg=#626765 ctermfg=8 gui=bold cterm=bold
hi Delimiter      guifg=#e2d8cd ctermfg=NONE
hi Tag            guifg=#31658c ctermfg=6
hi Debug          guifg=#f8818e ctermfg=1
hi Underlined     guifg=#8ed0ce ctermfg=4 gui=underline cterm=underline
hi Ignore         guifg=#3e4848 ctermfg=8

hi SpellBad       guifg=NONE guibg=NONE guisp=#f8818e gui=undercurl cterm=undercurl
hi SpellCap       guifg=NONE guibg=NONE guisp=#8ed0ce gui=undercurl cterm=undercurl
hi SpellLocal     guifg=NONE guibg=NONE guisp=#31658c gui=undercurl cterm=undercurl
hi SpellRare      guifg=NONE guibg=NONE guisp=#5e468c gui=undercurl cterm=undercurl

let g:terminal_ansi_colors = [
      \ '#333333',
      \ '#f8818e',
      \ '#92d3a2',
      \ '#1a8e63',
      \ '#8ed0ce',
      \ '#5e468c',
      \ '#31658c',
      \ '#e2d8cd',
      \ '#4a4a4a',
      \ '#fb3d66',
      \ '#6bb48d',
      \ '#30c85a',
      \ '#39a7a2',
      \ '#7e62b3',
      \ '#6096bf',
      \ '#e2d8cd',
      \ ]
