" Pathogen, plugin manager
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Line nums, colors and colorscheme
set number
set t_Co=256
colorscheme Tomorrow-Night-Eighties

" Set indentation (2 spaces)
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal smartindent

" Swap files
set dir=~/.vim/.swap//

" Backup files
set backup
set backupdir=~/.vim/.backup/,~/tmp,.

" Undo files
set undofile
set undodir=~/.vim/.undo/

" Ignore paths
set wildignore+=*/node_modules/*,*/build/*

" Highlight current line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Move current line up
nnoremap <C-J> :m +1<CR>

" Move current line down
nnoremap <C-K> :m -2<CR>

" List buffers
nnoremap <C-L> :ls<CR>

" CrtlP buffers
nnoremap <C-B> :CtrlPBuffer<CR>

" NERDTree toggle 
noremap <C-N> :NERDTreeToggle<CR>

