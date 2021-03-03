set nocompatible
filetype off

set encoding=UTF-8

" Disable stupid defaults
set noswapfile
set nobackup

" Allow multiple buffers
set hidden

" Plugins
call plug#begin()

try
  if has('nvim')
    source ~/.config/nvim/init.vim.plug
  else
    source ~/.vimrc.plug
  endif
catch
endtry

call plug#end()

syntax enable
set re=0

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
let g:lightline = {}
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
let g:lightline.component_expand = {
  \  'linter_checking': 'lightline#ale#checking',
  \  'linter_infos': 'lightline#ale#infos',
  \  'linter_warnings': 'lightline#ale#warnings',
  \  'linter_errors': 'lightline#ale#errors',
  \  'linter_ok': 'lightline#ale#ok',
  \ }
let g:lightline.component_type = {
  \  'linter_checking': 'right',
  \  'linter_infos': 'right',
  \  'linter_warnings': 'warning',
  \  'linter_errors': 'error',
  \  'linter_ok': 'right',
  \ }
let g:lightline.active = {
  \  'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
  \  'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ],
  \   'component': {
  \     'readonly': '%{&readonly?"":""}',
  \     'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \   }
  \ }
