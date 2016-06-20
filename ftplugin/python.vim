" enable syntax highlighting
syntax enable
"
" " show line numbers
set number
"
set cursorline
set showmatch
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
			\ [%l/%L\ (%p%%)
set autoindent
set smartindent

set textwidth=79 " PEP-8 Friendly
set tabstop=4
set shiftwidth=4
set expandtab
"
" " enable all Python syntax highlighting features
let python_highlight_all = 1

" enable jedi-vim
let g:jedi#auto_vim_configuration = 1
let g:jedi#auto_initialization = 1
let g:jedi#use_splits_not_buffers = "left"

" Set spelling to english
set spelllang=en_gb
set spell
