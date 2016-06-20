" Make pathogen work
execute pathogen#infect()

" Netrw options
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_winsize = -28
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu'  " --> I want line numbers on the netrw buffer
"nnoremap <silent> <leader>k :Lexplore<cr>
nnoremap <silent> <C-n> :Lexplore<cr>

" General purpose settings
filetype on
filetype plugin indent on
set number
set relativenumber

" vim-latex settings
let g:tex_flavor='latex'
au FileType tex set sw=2
au FileType tex setlocal spell spelllang=en_gb
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'

"localvimrc settings
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0

" Display spell error with underline
hi clear SpellBad
hi SpellBad cterm=underline
set spell

" Map <leader> to ,
let mapleader = ','

