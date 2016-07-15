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

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

nnoremap <leader>y :0,$!yapf<Cr>

" Set foldmethod
set foldmethod=syntax
