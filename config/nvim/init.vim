
" system behavior
set noerrorbells
set noswapfile
set wrap linebreak

" clipboard
vnoremap <C-c> "+y
vnoremap y "+y
vnoremap d "+d
vnoremap p "+p
nnoremap yy "+yy
nnoremap dd "+dd
nnoremap p "+p

" quick commands
cnoremap q q!
cnoremap wq wq!

" ui
set nu

" navigation
set scrolloff=8
set incsearch

" editor
set tabstop=4 softtabstop=4 shiftwidth=4 smartindent
set nohlsearch

