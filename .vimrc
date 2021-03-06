" =============================================================================
"
"                                    Defaults
"
" =============================================================================

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()
call pathogen#helptags()

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
set smartcase                   " Case insensitive search unless the regex includes uppercase chars
set hls                         " Enable search result highlighting

" -----------------------------------------------------------------------------
"                              Viminfo
" -----------------------------------------------------------------------------

" Save up too 100, possibly uppercase marks
set viminfo='100,f1,<500
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
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

" Bash-like file completion
set wildmode=longest,list
set wildmenu

" Use ag instead of ack
" let g:ackprg = 'ag --follow --nogroup --nocolor --column'
" let g:ack_use_dispatch = 1
" set titlestring=%{system('basename\ $VIRTUAL_ENV')}

autocmd FocusGained :e!

" -----------------------------------------------------------------------------
"                              File types
" -----------------------------------------------------------------------------

filetype on
filetype plugin on
filetype indent on
au Bufread,BufNewFile *.jade set filetype=jade
au Bufread,BufNewFile *.scss set filetype=scss
au BufNewFile,BufRead *.html set filetype=htmldjango
au Bufread,BufNewFile *.md set filetype=markdown
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" =============================================================================
"
"                                   Display
"
" =============================================================================

" -----------------------------------------------------------------------------
"                                  Rendering
" -----------------------------------------------------------------------------

" colorscheme
colorscheme solarized

" Enable syntax highlighting
syntax on

" MacVim options
set guifont=Nitti\ Basic:h20
set lines=43 columns=130
set breakindent

" -----------------------------------------------------------------------------
"                                  Text area
" -----------------------------------------------------------------------------

" more natural window splits
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

" stop going to the start of a line on buffer switch
set nostartofline

" Display trailing spaces   
hi ExtraWhitespace ctermbg=white
match ExtraWhitespace /\(\s\+\|\%xa0\+\)\%#\@<!$/

" Wrap lines nicely
set nolist
set linebreak

" Highlight current line
set cursorline

" Use limelight with Goyo
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

" Limelight settings
let g:limelight_conceal_ctermfg = 252

" Don't close window, when deleting a buffer
" from https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

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
nnoremap <silent> \ :noh<CR>
nnoremap <silent> <leader>\ :let @/=""<cr>

" Yank the whole file and return to previous position
noremap <leader>y ggVGy``

" paste over the entire file
nnoremap <leader>p ggVGp

" " easier command mode
" nnoremap ; :
" nnoremap : ;
" vnoremap ; :
" vnoremap : ;
" nnoremap q; q:

" easier escaping
inoremap jk <ESC>

" butterfingers when saving etc
:command WQ wq
:command Wq wq
:command W w
:command Q q

nnoremap <leader>8 oprint "*"*80<ESC>
nnoremap <leader>* Oprint "*"*80<ESC>

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
nnoremap cv :e $MYVIMRC<CR>

" Source this file really fast
nnoremap <leader>so :so $MYVIMRC<CR>

" for when vim messes up
nnoremap <leader>rd :redraw!<CR>

" Folding
nnoremap <leader>fs :set fdm=syntax<CR>
nnoremap <leader>fm :set fdm=manual<CR>
nnoremap <leader>fd :set fdm=manual<CR>zE

" Very magic searching
nnoremap / /\v
vnoremap / /\v
nnoremap ,/ /
vnoremap ,/ /

" Remove trailing whitespace, blank lines, and carraige returns
nnoremap dcw :%s/\s\+$//e<CR>''
nnoremap dcr :g/^\s*$/d<CR>''
nnoremap dcc :%s/<C-V><C-M>//e<CR>''

" ack mappings
nnoremap <leader>a :Ack! 


" Vimux commands
function! VmxRun()
  call inputsave()
  let l:cmd = input(':')
  call inputrestore()
  call VimuxRunCommand(l:cmd)
endfunction

" Make things like iA Writer
nnoremap <leader>i :Goyo<CR>
nnoremap <leader>l :Limelight!!<CR>
nnoremap <leader>= :silent !osascript -e "tell application \"System Events\" to keystroke \"0\" using command down" -e "repeat 6 times" -e "tell application \"System Events\" to keystroke \"+\" using command down" -e "end repeat"<CR><CR>
nnoremap <leader>- :silent !osascript -e "tell application \"System Events\" to keystroke \"0\" using command down" -e "repeat 10 times" -e "tell application \"System Events\" to keystroke \"-\" using command down" -e "end repeat"<CR><CR>
nnoremap <leader>0 :silent !osascript -e "tell application \"System Events\" to keystroke \"0\" using command down"<CR><CR>

" Invoke gundo
nnoremap <leader>g :GundoToggle<CR>

" Vimux commands
nnoremap [vr :call VmxRun()<CR>
nnoremap [vl :call VimuxRunLastCommand()<CR>
nnoremap [vc :call VimuxCloseRunner()<CR>

nnoremap [vs :call VimuxRunCommand("rspec " . expand("%:p"))<CR>
nnoremap [vx :call VimuxRunCommand(expand("%:p"))<CR>

" Open a quick notes file
nnoremap <leader>sp :vs<CR>:e ~/Documents/scratchpad<CR>

" Git stuff
nnoremap <leader>bl :Gblame<CR>

" -----------------------------------------------------------------------------
"                              File handling
" -----------------------------------------------------------------------------

" File explorer
nnoremap <leader>o :Ex<CR>
" Goto buffer
nnoremap gb :CtrlPBuffer<CR>

let g:ctrlp_custom_ignore = '\v\.pyc'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
" let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co && cd $VIRTUAL_ENV && find . -type d -name .git -execdir git ls-files --exclude-standard -co \;']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:32,results:32'

nnoremap <leader>e :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>

nnoremap <leader>t :TlistToggle<CR>
" let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 48
nnoremap <leader>c :ccl <bar> :lcl<CR>
" -----------------------------------------------------------------------------
"                              Vim-Pad
" -----------------------------------------------------------------------------
let g:pad#dir="~/Dropbox/vim_notes"
nnoremap <leader>fp :echo expand('%:p')<CR>

autocmd FileType python BracelessEnable +indent
