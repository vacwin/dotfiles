" guts — Berserk-inspired muted dark theme
" ported from https://github.com/vossenwout/guts.nvim

hi clear
if exists('syntax_on')
  syntax reset
endif
set background=dark
let g:colors_name = 'guts'

hi Normal         guifg=#9f9e99 guibg=#101113 ctermfg=NONE ctermbg=NONE
hi NonText        guifg=#9f9e99 ctermfg=NONE
hi EndOfBuffer    guifg=#554a62 ctermfg=8
hi SpecialKey     guifg=#8a4f53 ctermfg=1
hi Conceal        guifg=#787487 ctermfg=8
hi Cursor         guifg=#101113 guibg=#9f9e99 ctermfg=NONE ctermbg=NONE
hi lCursor        guifg=#101113 guibg=#9f9e99 ctermfg=NONE ctermbg=NONE
hi CursorLine     guibg=#161719 ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn   guibg=#161719 ctermbg=NONE gui=NONE cterm=NONE
hi ColorColumn    guibg=#161719 ctermbg=NONE gui=NONE cterm=NONE
hi LineNr         guifg=#554a62 ctermfg=8
hi CursorLineNr   guifg=#554a62 ctermfg=8
hi SignColumn     guifg=#554a62 guibg=#101113 ctermfg=8 ctermbg=NONE
hi FoldColumn     guifg=#554a62 guibg=#101113 ctermfg=8 ctermbg=NONE
hi Folded         guifg=#554a62 guibg=#161719 ctermfg=8 ctermbg=NONE
hi VertSplit      guifg=#554a62 guibg=#101113 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi WinSeparator   guifg=#554a62 guibg=#101113 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen     guifg=#9f9e99 guibg=#554a62 ctermfg=NONE ctermbg=8 gui=bold cterm=bold
hi Visual         guifg=#a7d8b0 ctermfg=10
hi VisualNOS      guifg=#a7d8b0 ctermfg=10
hi Search         guifg=#a7d8b0 ctermfg=10
hi IncSearch      guifg=#a7d8b0 ctermfg=10
hi CurSearch      guifg=#e1ffe5 ctermfg=11
hi QuickFixLine   guibg=#161719 ctermbg=NONE
hi StatusLine     guifg=#787487 guibg=#161719 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineNC   guifg=#554a62 guibg=#161719 ctermfg=8 ctermbg=NONE gui=NONE cterm=NONE
hi TabLine        guifg=#9f9e99 guibg=#101113 ctermfg=NONE ctermbg=NONE
hi TabLineSel     guifg=#9f9e99 guibg=#161719 ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi TabLineFill    guifg=#554a62 guibg=#101113 ctermfg=8 ctermbg=NONE
hi WildMenu       guifg=#101113 guibg=#a7d8b0 ctermfg=0 ctermbg=10
hi Pmenu          guifg=#9f9e99 guibg=#101113 ctermfg=NONE ctermbg=NONE
hi PmenuSel       guifg=#e1ffe5 guibg=#161719 ctermfg=11 ctermbg=NONE
hi PmenuSbar      guibg=#101113 ctermbg=NONE
hi PmenuThumb     guibg=#101113 ctermbg=NONE
hi Directory      guifg=#7a837c ctermfg=6 gui=bold cterm=bold
hi Title          guifg=#9f9e99 ctermfg=NONE gui=bold cterm=bold
hi Question       guifg=#9f9e99 ctermfg=NONE
hi MoreMsg        guifg=#9f9e99 ctermfg=NONE
hi ModeMsg        guifg=#9f9e99 ctermfg=NONE gui=bold cterm=bold
hi WarningMsg     guifg=#ac7f7b ctermfg=3
hi ErrorMsg       guifg=#6f2e2a ctermfg=1
hi Error          guifg=#101113 guibg=#6f2e2a ctermfg=0 ctermbg=1
hi Todo           guifg=#101113 guibg=#a7d8b0 ctermfg=0 ctermbg=10 gui=bold cterm=bold
hi DiffAdd        guibg=#142018 ctermbg=NONE
hi DiffChange     guifg=#ac7f7b guibg=#161719 ctermfg=3 ctermbg=NONE
hi DiffDelete     guibg=#241217 ctermbg=NONE
hi DiffText       guifg=#101113 guibg=#ac7f7b ctermfg=0 ctermbg=3
hi Comment        guifg=#554a62 ctermfg=8 gui=italic cterm=italic
hi Constant       guifg=#997e95 ctermfg=13
hi String         guifg=#7a837c ctermfg=6
hi Character      guifg=#7a837c ctermfg=6
hi Number         guifg=#997e95 ctermfg=13
hi Boolean        guifg=#997e95 ctermfg=13
hi Float          guifg=#997e95 ctermfg=13
hi Identifier     guifg=#787487 ctermfg=8 gui=NONE cterm=NONE
hi Function       guifg=#83799c ctermfg=5
hi Statement      guifg=#9f9e99 ctermfg=NONE gui=NONE cterm=NONE
hi Conditional    guifg=#9f9e99 ctermfg=NONE
hi Repeat         guifg=#9f9e99 ctermfg=NONE
hi Label          guifg=#9f9e99 ctermfg=NONE
hi Operator       guifg=#9f9e99 ctermfg=NONE
hi Keyword        guifg=#8288a0 ctermfg=12
hi Exception      guifg=#9f9e99 ctermfg=NONE
hi PreProc        guifg=#8a4f53 ctermfg=1
hi Include        guifg=#8a4f53 ctermfg=1
hi Define         guifg=#8a4f53 ctermfg=1
hi Macro          guifg=#8a4f53 ctermfg=1
hi PreCondit      guifg=#8a4f53 ctermfg=1
hi Type           guifg=#697a9a ctermfg=4 gui=NONE cterm=NONE
hi StorageClass   guifg=#697a9a ctermfg=4
hi Structure      guifg=#697a9a ctermfg=4
hi Typedef        guifg=#697a9a ctermfg=4
hi Special        guifg=#8a4f53 ctermfg=1
hi SpecialComment guifg=#554a62 ctermfg=8 gui=bold cterm=bold
hi Delimiter      guifg=#9f9e99 ctermfg=NONE
hi Tag            guifg=#8a4f53 ctermfg=1
hi Debug          guifg=#6f2e2a ctermfg=1
hi Underlined     guifg=#787487 ctermfg=8 gui=underline cterm=underline
hi Ignore         guifg=#554a62 ctermfg=8

hi NormalFloat    guifg=#9f9e99 guibg=#101113 ctermfg=NONE ctermbg=NONE
hi FloatBorder    guifg=#554a62 ctermfg=8

hi DiagnosticError guifg=#6f2e2a ctermfg=1
hi DiagnosticWarn  guifg=#ac7f7b ctermfg=3
hi DiagnosticInfo  guifg=#9f9e99 ctermfg=NONE
hi DiagnosticHint  guifg=#9f9e99 ctermfg=NONE

hi SpellBad       guifg=NONE guibg=NONE guisp=#6f2e2a gui=undercurl cterm=undercurl
hi SpellCap       guifg=NONE guibg=NONE guisp=#697a9a gui=undercurl cterm=undercurl
hi SpellLocal     guifg=NONE guibg=NONE guisp=#6d7580 gui=undercurl cterm=undercurl
hi SpellRare      guifg=NONE guibg=NONE guisp=#ac7f7b gui=undercurl cterm=undercurl

let g:terminal_ansi_colors = [
      \ '#101113',
      \ '#93554b',
      \ '#51606a',
      \ '#ac7f7b',
      \ '#697a9a',
      \ '#83799c',
      \ '#7a837c',
      \ '#9f9e99',
      \ '#4a4253',
      \ '#93554b',
      \ '#a7d8b0',
      \ '#e1ffe5',
      \ '#8288a0',
      \ '#997e95',
      \ '#879493',
      \ '#a8a7a2',
      \ ]
