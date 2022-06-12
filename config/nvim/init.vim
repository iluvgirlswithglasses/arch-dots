
" system behavior
set noerrorbells
set noswapfile

" clipboard
vnoremap <C-c> "+y
vnoremap y "+y
nnoremap yy "+yy
nnoremap dd "+dd
nnoremap p "+p
vnoremap p "+p

" quick commands
cnoremap q q!
cnoremap wq wq!

" ui
set nu

" navigation
set scrolloff=8
set incsearch

" editor
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
set nohlsearch

