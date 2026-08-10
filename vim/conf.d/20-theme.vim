set termguicolors
set background=dark

colorscheme traffic

" function! s:TransparentBG() abort
"   highlight Normal           ctermbg=NONE guibg=NONE
"   highlight EndOfBuffer      ctermbg=NONE guibg=NONE
"   highlight SignColumn       ctermbg=NONE guibg=NONE
"   highlight LineNr           ctermbg=NONE guibg=NONE
"   highlight CursorColumn     ctermbg=NONE guibg=NONE
"   highlight Pmenu            ctermbg=NONE guibg=NONE
"   highlight PmenuSel         ctermbg=NONE guibg=NONE
" endfunction
"
" augroup TransparentBG
"   autocmd!
"   autocmd VimEnter,ColorScheme * call s:TransparentBG()
" augroup END
"
" call s:TransparentBG()
