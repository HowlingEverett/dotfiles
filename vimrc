set nocompatible
filetype off

" Disable stupid defaults
set noswapfile
set nobackup

" Allow multiple buffers
set hidden

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
set background=dark

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
let g:ale_sign_error = '💩'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
highlight clear ALEErrorSign

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
let g:lightline = {
  \   'active': {
  \     'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ], ['ale'] ],
  \   },
  \   'component': {
  \     'readonly': '%{&readonly?"":""}',
  \     'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \     'ale': '%{ALEGetStatusLine()}'
  \   }
  \ }
