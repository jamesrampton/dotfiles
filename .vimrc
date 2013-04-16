" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" =============================================================================
"
" Global
"
" =============================================================================

call pathogen#infect()
let g:syntastic_check_on_open=1

" =============================================================================
"
" Display
"
" =============================================================================

" Use solarized colorscheme
let g:solarized_termtrans=1
"let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
set bg=light
set guifont=Source\ Code\ Pro:h15
set lazyredraw
" Enable syntax highlighting
syntax on
" Disable blinking cursor
set gcr=a:blinkon0
" Show cursor position
set cursorline
" Show line numbers
set number
"Always show the cursor position
set ruler
" Show the current mode we're in
set showmode
" Make it really obvious what line we're on
"set cursorline

" Display tabs and trailling spaces like this:    
set list listchars=tab:\ \ ,trail:·

" Hide toolbars and scrollbars in MacVim
set go-=T
set go-=r
set go-=L

" Automatically read files written outside of vim
set autoread
" Allow backspace in insert mode
set backspace=indent,eol,start
let mapleader=","
" Remember lots of commands
set history=1000
" Help us out with commands we type
set showcmd

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" set linebreak
filetype plugin indent on
" Erm, set auto-indentation?
set autoindent

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

" ========== Turn off swap files ==========
set nobackup
set nowritebackup
set noswapfile

" ========== Searching ==========
set cpoptions+=$                " Show a $ at the end of a replace operation
set incsearch                   " Do incremental searching
set nohlsearch                  " Disable search result highlighting

" ========== Viminfo ==========
" Save up too 100, possibly uppercase marks
set viminfo='100,f1,<500
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
" More natural navigation for wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
set scrolloff=3
set encoding=utf-8
set wrap
nnoremap <leader>w :set wrap!<cr>
" Navigate buffers
nnoremap <C-TAB> :bn<cr>
nnoremap <s-C-TAB> :bp<cr>
" IDE stuff
nnoremap <leader>r :!ruby %<cr>
au Bufread,BufNewFile *.jade set filetype=jade
au Bufread,BufNewFile *.scss set filetype=scss
" Use system clipboard
set clipboard=unnamed
set hidden
" Yank the whole file with Cmd + Y
noremap <leader>y ggVGy
"set autochdir
inoremap <TAB> <C-p>
nnoremap ; :
inoremap jj <ESC>
nnoremap <UP> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
function! LineNumbers()
  if &rnu == 'norelativenumber'
    echo "Setting relative numbers"
    set rnu
  else
    echo "Setting absolute numbers"
    set nu
  endif
endfunction
nnoremap <leader>n :call LineNumbers()<CR>
" Insert newlines without entering INSERT mode
nnoremap <C-j> o<esc>
nnoremap <C-k> O<esc>
