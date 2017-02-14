set nocompatible
filetype off

" Plugins
call plug#begin()

try
  source ~/.vimrc.plug
catch
endtry

call plug#end()

syntax enable

if $TERM_PROGRAM =~ "iTerm"
  set termguicolors
endif
colorscheme gruvbox

set number

filetype plugin indent on

" Spacing
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:SuperTabDefaultCompletionType = "<c-n>"
set completeopt-=preview

" == Ale linter
let g:ale_linters = {
\  'javascript': ['standard']
\}

"== mxw/vim-jsx ==
let g:jsx_ext_required = 0

" == junegunn/fzf ==
nnoremap <C-T> :FZF<CR>
inoremap <C-T> <ESC>:FZF<CR>i


" == scrooloose/nerdtree ==
nnoremap <C-\> :NERDTreeToggle<CR>
inoremap <C-\> <ESC>:NERDTreeToggle<CR>

" == lightline ==
set laststatus=2
