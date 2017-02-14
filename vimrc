
" Turn on syntax highlighting
syntax on

" Make pathogen work
execute pathogen#infect()

" Use vim settings (not vi)
set nocompatible

" Send more characters for redraws
set ttyfast

" Enable mouse
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif

" YouCompleteMe options
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" NERDTree options
map <C-n> :NERDTreeToggle<CR>

" General purpose settings
filetype on
filetype plugin indent on
set number
set relativenumber

"localvimrc settings
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0

" Display spell error with underline
hi clear SpellBad
hi SpellBad cterm=underline
set spell

" Map <leader> to ,
let mapleader = ','

" Turn of python indentation by default
let g:pymode_indent = 0

" Doxygen toolkit options
let g:DoxygenToolkit_authorName="John Erlandsson <john@lunatech.se>"

" YouCompleteMe options
let g:ycm_confirm_extra_conf = 0

" Remap keys for scrolling autocomplete box
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']

" Clang-format options
let g:clang_format#code_style = 'google'

" Go to next buffer
map gn :bn<cr>
" Go to previous buffer
map gp :bp<cr>
" Go back to last buffer
map gb :b#<cr>
" Close all buffers except the current one
map gdo :Bonly<cr>

" Make :Q behave like :q
command Q quit

" Setup valgrind arguments
let g:valgrind_arguments="-v --num-callers=500 --leak-check=full --show-leak-kinds=all"

" Enable airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Menlo\ Regular:h20

" Enable powerline
"let g:pymode_python = 'python3'
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

" Color options
set t_Co=256
if &term =~ '256color'
    set t_ut=
endif
color moriarty

runtime! ftplugin/man.vim
let g:tex_flavor='latex'

" Create tags
if exists('$TMUX')
    nnoremap <F5> :VimuxRunCommand("ctags -R .")<CR>
else
    nnoremap <F5> :!ctags -R<CR>
endif

" Create doxygen comment

map <F6> :Dox<CR>

" Detect heidenhain file
function Heidenhain_Klartext_ftdetect()
    if getline(1) =~ 'BEGIN\s*PGM.*\(INCH\|MM\)'
    setlocal filetype=heidenhain
    endif
endfunction

autocmd BufRead *.NC call Heidenhain_Klartext_ftdetect()
autocmd BufRead *.nc call Heidenhain_Klartext_ftdetect()
autocmd BufRead *.H call Heidenhain_Klartext_ftdetect()
autocmd BufRead *.h call Heidenhain_Klartext_ftdetect()
autocmd BufRead *.txt call Heidenhain_Klartext_ftdetect()
