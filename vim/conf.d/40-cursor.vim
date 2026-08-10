let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

augroup CursorShape
  autocmd!
  autocmd VimEnter * call echoraw(&t_EI)
augroup END
