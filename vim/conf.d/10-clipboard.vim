" обычные y/p работают с системным буфером
" unnamedplus в vim живёт только с X11/wayland-клипбордом, на маке его нет
if has('unnamedplus')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif
