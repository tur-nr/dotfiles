" Pathogen, plugin manager
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" airline, powerline fonts
let g:airline_powerline_fonts = 1

" line mover
let g:move_key_modifier = 'C'

" json format
autocmd BufNewFile,BufRead *.json set ft=javascript

" emmet for html/css only
let g:user_emmet_install_global = 0
autocmd FileType html,css,handlebars.html EmmetInstall

" coffeescript indents
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=4 expandtab
autocmd FileType coffee setl shiftwidth=4 expandtab

" Line nums, colors and colorscheme
set number
set t_Co=256
set background=dark
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
set wildignore+=*/build/*
set wildignore+=*/compiled/*
set wildignore+=*/bower_components/*
set wildignore+=*/coverage/*

" Highlight current line
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END


" List buffers
nnoremap <C-L> :ls<CR>

" NERDTree toggle
nnoremap <C-N> :NERDTreeToggle<CR>

" GUI
if has("gui_running")
  set guifont=Liberation\ Mono\ for\ Powerline\ 11
  set guioptions-=r
  set guioptions-=L
  set lines=999 columns=999
endif
