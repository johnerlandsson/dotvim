" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 2 spaces
set shiftwidth=2     " indent also with 2 spaces
set expandtab        " expand tabs to spaces
set sw=2

setlocal spell spelllang=en_gb
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

nnoremap <leader>y :0,$!texpretty --width 128 --indent 2 --no-comment-banner 2> /dev/null<cr>
