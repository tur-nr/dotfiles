" Pathogen, plugin manager
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" airline, powerline fonts
let g:airline_powerline_fonts = 1

" json format
autocmd BufNewFile,BufRead *.json set ft=javascript

" emmet for html/css only
let g:user_emmet_install_global = 0
autocmd FileType html,css,handlebars.html EmmetInstall

" coffeescript indents 
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=4 expandtab

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

" indentation guides 
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237

" Swap files
set dir=~/.vim/.swap/

" Backup files
set backup
set backupdir=~/.vim/.backup/,~/tmp,.

" Undo files
set undofile
set undodir=~/.vim/.undo/

" Ignore paths
set wildignore+=*/node_modules/*

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
nnoremap <C-N> :NERDTreeToggle<CR>
