hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'traffic'

hi Normal         guifg=#cfb9a8 guibg=#272c30 ctermfg=NONE ctermbg=NONE
hi NonText        guifg=#53514f ctermfg=8
hi EndOfBuffer    guifg=#53514f ctermfg=8
hi SpecialKey     guifg=#53514f ctermfg=8
hi Conceal        guifg=#6e6762 ctermfg=8
hi Cursor         guifg=#272c30 guibg=#cfb9a8 ctermfg=NONE ctermbg=NONE
hi lCursor        guifg=#272c30 guibg=#cfb9a8 ctermfg=NONE ctermbg=NONE
hi CursorLine     guibg=#383a3c ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn   guibg=#383a3c ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn    guibg=#383a3c ctermbg=NONE gui=NONE cterm=NONE
hi LineNr         guifg=#6e6762 ctermfg=8
hi CursorLineNr   guifg=#c79e84 ctermfg=3 gui=bold cterm=bold
hi SignColumn     guifg=#6e6762 guibg=#272c30 ctermfg=8 ctermbg=NONE
hi FoldColumn     guifg=#6e6762 guibg=#272c30 ctermfg=8 ctermbg=NONE
hi Folded         guifg=#6e6762 guibg=#383a3c ctermfg=8 ctermbg=NONE
hi VertSplit      guifg=#53514f guibg=#272c30 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen     guifg=#cfb9a8 guibg=#454546 ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi Visual         guifg=#272c30 guibg=#cfb9a8 ctermfg=NONE ctermbg=NONE
hi VisualNOS      guifg=#272c30 guibg=#cfb9a8 ctermfg=NONE ctermbg=NONE
hi Search         guifg=#272c30 guibg=#c79e84 ctermfg=0 ctermbg=3
hi IncSearch      guifg=#272c30 guibg=#c79e84 ctermfg=0 ctermbg=11
hi CurSearch      guifg=#272c30 guibg=#c79e84 ctermfg=0 ctermbg=11
hi QuickFixLine   guibg=#454546 ctermbg=NONE
hi StatusLine     guifg=#cfb9a8 guibg=#383a3c ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineNC   guifg=#6e6762 guibg=#383a3c ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLine        guifg=#6e6762 guibg=#383a3c ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel     guifg=#cfb9a8 guibg=#272c30 ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi TabLineFill    guifg=#6e6762 guibg=#383a3c ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu       guifg=#272c30 guibg=#c79e84 ctermfg=0 ctermbg=3
hi Pmenu          guifg=#cfb9a8 guibg=#383a3c ctermfg=NONE ctermbg=NONE
hi PmenuSel       guifg=#272c30 guibg=#515e67 ctermfg=0 ctermbg=4
hi PmenuSbar      guibg=#454546 ctermbg=NONE
hi PmenuThumb     guibg=#6e6762 ctermbg=8
hi Directory      guifg=#515e67 ctermfg=4
hi Title          guifg=#715f5e ctermfg=5 gui=bold cterm=bold
hi Question       guifg=#637268 ctermfg=2
hi MoreMsg        guifg=#637268 ctermfg=2
hi ModeMsg        guifg=#cfb9a8 ctermfg=NONE gui=bold cterm=bold
hi WarningMsg     guifg=#c79e84 ctermfg=3
hi ErrorMsg       guifg=#934e46 ctermfg=1
hi Error          guifg=#272c30 guibg=#934e46 ctermfg=0 ctermbg=1
hi Todo           guifg=#272c30 guibg=#c79e84 ctermfg=0 ctermbg=3 gui=bold cterm=bold
hi DiffAdd        guifg=#637268 guibg=#383a3c ctermfg=2 ctermbg=NONE
hi DiffChange     guifg=#c79e84 guibg=#383a3c ctermfg=3 ctermbg=NONE
hi DiffDelete     guifg=#934e46 guibg=#383a3c ctermfg=1 ctermbg=NONE
hi DiffText       guifg=#272c30 guibg=#c79e84 ctermfg=0 ctermbg=3
hi Comment        guifg=#6e6762 ctermfg=8 gui=italic cterm=italic
hi Constant       guifg=#5c6f7d ctermfg=6
hi String         guifg=#637268 ctermfg=2
hi Character      guifg=#637268 ctermfg=2
hi Number         guifg=#715f5e ctermfg=5
hi Boolean        guifg=#715f5e ctermfg=5
hi Float          guifg=#715f5e ctermfg=5
hi Identifier     guifg=#515e67 ctermfg=4 gui=NONE cterm=NONE
hi Function       guifg=#515e67 ctermfg=12
hi Statement      guifg=#934e46 ctermfg=1 gui=NONE cterm=NONE
hi Conditional    guifg=#934e46 ctermfg=1
hi Repeat         guifg=#934e46 ctermfg=1
hi Label          guifg=#934e46 ctermfg=1
hi Operator       guifg=#934e46 ctermfg=1
hi Keyword        guifg=#934e46 ctermfg=1
hi Exception      guifg=#934e46 ctermfg=1
hi PreProc        guifg=#715f5e ctermfg=5
hi Include        guifg=#715f5e ctermfg=5
hi Define         guifg=#715f5e ctermfg=5
hi Macro          guifg=#715f5e ctermfg=5
hi PreCondit      guifg=#715f5e ctermfg=5
hi Type           guifg=#c79e84 ctermfg=3 gui=NONE cterm=NONE
hi StorageClass   guifg=#c79e84 ctermfg=3
hi Structure      guifg=#c79e84 ctermfg=3
hi Typedef        guifg=#c79e84 ctermfg=3
hi Special        guifg=#5c6f7d ctermfg=6
hi SpecialComment guifg=#6e6762 ctermfg=8 gui=bold cterm=bold
hi Delimiter      guifg=#cfb9a8 ctermfg=NONE
hi Tag            guifg=#5c6f7d ctermfg=6
hi Debug          guifg=#934e46 ctermfg=1
hi Underlined     guifg=#515e67 ctermfg=4 gui=underline cterm=underline
hi Ignore         guifg=#53514f ctermfg=8

hi SpellBad       guifg=NONE guibg=NONE guisp=#934e46 gui=undercurl cterm=undercurl
hi SpellCap       guifg=NONE guibg=NONE guisp=#515e67 gui=undercurl cterm=undercurl
hi SpellLocal     guifg=NONE guibg=NONE guisp=#5c6f7d gui=undercurl cterm=undercurl
hi SpellRare      guifg=NONE guibg=NONE guisp=#715f5e gui=undercurl cterm=undercurl

let g:terminal_ansi_colors = [
      \ '#282d31',
      \ '#934e46',
      \ '#637268',
      \ '#c79e84',
      \ '#515e67',
      \ '#715f5e',
      \ '#5c6f7d',
      \ '#cfb9a8',
      \ '#4e575e',
      \ '#934e46',
      \ '#637270',
      \ '#c79e84',
      \ '#515e67',
      \ '#715f5e',
      \ '#5c6f7d',
      \ '#ddcec2',
      \ ]
