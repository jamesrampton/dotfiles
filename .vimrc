" =============================================================================
"
"                                    Defaults
"
" =============================================================================

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

call pathogen#infect()
let g:syntastic_check_on_open=1

" Remember lots of commands
set history=1000

" Help us out with commands we type
set showcmd

" allow backspace in insert mode
:set backspace=2
" -----------------------------------------------------------------------------
"                              Searching
" -----------------------------------------------------------------------------

set cpoptions+=$                " Show a $ at the end of a replace operation
set incsearch                   " Do incremental searching
set hls                         " Enable search result highlighting

" -----------------------------------------------------------------------------
"                              Viminfo
" -----------------------------------------------------------------------------

" Save up too 100, possibly uppercase marks
set viminfo='100,f1,<500
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set scrolloff=3
set encoding=utf-8
set wrap

" Use system clipboard
set clipboard+=unnamed
set hidden

" -----------------------------------------------------------------------------
"                              File handling
" -----------------------------------------------------------------------------

" Automatically read files written outside of vim
set autoread

" Turn off swap files
set nobackup
set nowritebackup
set noswapfile

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

" -----------------------------------------------------------------------------
"                              File types
" -----------------------------------------------------------------------------

au Bufread,BufNewFile *.jade set filetype=jade
au Bufread,BufNewFile *.scss set filetype=scss
au Bufread,BufNewFile *.md set filetype=markdown

" =============================================================================
"
"                                   Display
"
" =============================================================================

" -----------------------------------------------------------------------------
"                                  Rendering
" -----------------------------------------------------------------------------

" Use solarized colorscheme
let g:solarized_termtrans=1

"let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
set bg=light

" Enable syntax highlighting
syntax on

" more obvious SpellBad highlighting
hi SpellBad cterm=NONE
hi SpellBad ctermfg=white
hi SpellBad ctermbg=red

" mark when lines go over 80 chars
" https://docs.google.com/file/d/0Bx3f0gFZh5Jqc0MtcUstV3BKdTQ/preview?pli=1
hi ColorColumn cterm=underline
call matchadd('ColorColumn', '\%81v', 100)

" -----------------------------------------------------------------------------
"                                  Text area
" -----------------------------------------------------------------------------

" more natural window slpits
set splitbelow
set splitright
set laststatus=2

" vim slows down a bit in tmux
set lazyredraw


" Set auto-indentation
filetype plugin indent on
set autoindent

" Disable blinking cursor
set gcr=a:blinkon0

" Make it really obvious what line we're on
set cursorline

" Display tabs and trailing spaces, and indicate long lines
set list listchars=tab:\ \ ,trail:·,extends:»,precedes:«

" Wrap lines nicely when nolist is set
set linebreak

" -----------------------------------------------------------------------------
"                              Window decoration
" -----------------------------------------------------------------------------

" Show line numbers
set number

"Always show the cursor position
set ruler

" Hide toolbars and scrollbars in MacVim
set go-=T
set go-=r
set go-=L

" =============================================================================
"
"                                   Key mappings
"
" =============================================================================

" More convenient leader
let mapleader=","

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo, so
" that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Stop highlighting search results
nnoremap <silent> <space> :nohl<CR>

" IDE stuff
nnoremap <leader>r :!ruby %<cr>

" Yank the whole file and return to previous position
noremap <leader>y ggVGy``

" paste over the entire file
nnoremap <leader>p ggVGp
nnoremap ; :
vnoremap ; :
inoremap jj <ESC>

" Disable those pesky cursor keys
nnoremap <UP> <NOP>
nnoremap <DOWN> <NOP>
nnoremap <LEFT> <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" Get here really fast
nnoremap <leader>v :e $MYVIMRC<CR>

" Folding
nnoremap <leader>fs :set fdm=syntax<CR>
nnoremap <leader>fm :set fdm=manual<CR>
nnoremap <leader>fd :set fdm=manual<CR>zE

" Very magic searching
nnoremap / /\v
vnoremap / /\v
nnoremap ,/ /
vnoremap ,/ /

" Vimux commands
function! VmxRun()
  call inputsave()
  let l:cmd = input(':')
  call inputrestore()
  call VimuxRunCommand(l:cmd)
endfunction

nnoremap [vr :call VmxRun()<CR>
nnoremap [vl :call VimuxRunLastCommand()<CR>
nnoremap [vc :call VimuxCloseRunner()<CR>

nnoremap [vs :call VimuxRunCommand("rspec " . expand("%:p"))<CR>
nnoremap [vx :call VimuxRunCommand(expand("%:p"))<CR>
