" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
call pathogen#infect()
let g:syntastic_check_on_open=1
"========== Display ==========
"
" Use solarized colorscheme
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
if has('gui')
    set bg=light
else
    set bg=dark
endif
set guifont=Menlo:h14
syntax on                       " Enable syntax highlighting
set gcr=a:blinkon0              " Disable blinking cursor
set number                      " Show line numbers
set ruler                       " Show the cursor position all the time
set showmode                    " Show current mode
set cursorline

" Display tabs and trailling spaces    
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
set history=1000                " keep loads of command line history
set showcmd                     " display incomplete commands

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" set linebreak
filetype plugin indent on
set autoindent                  " always set autoindenting on

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
set viminfo='100,f1,<500        " Save up to 100 marks; enable uppercase marks
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
" Navigate buffers
nnoremap <C-TAB> :bn<cr>
nnoremap <s-C-TAB> :bp<cr>
" IDE stuff
nnoremap <leader>p :!python %<cr>
nnoremap <leader>r :!ruby %<cr>
nnoremap <F7> :!/Users/james/Sites/hmic/wp-content/themes/hmic/scripts/src/uglify.sh
au Bufread,BufNewFile *.jade set filetype=jade
au Bufread,BufNewFile *.scss set filetype=scss
" Use system clipboard
set clipboard=unnamed
set hidden
" Yank the whole file with Cmd + Y
noremap <leader>y ggVGy
set autochdir
inoremap <TAB> <C-p>
nnoremap ; :
