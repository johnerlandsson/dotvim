" enable syntax highlighting
syntax enable

set cursorline
set showmatch
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
			\ [%l/%L\ (%p%%)
" Turn on python indentation
let g:pymode_indent = 1
set autoindent
set smartindent

set textwidth=79 " PEP-8 Friendly
set tabstop=4
set shiftwidth=4
set expandtab

" " enable all Python syntax highlighting features
let python_highlight_all = 1

" Set spelling to english
set spelllang=en_gb
set spell

set fileformat=unix

