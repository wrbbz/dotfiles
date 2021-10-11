if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/arseniyzorin/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/arseniyzorin/.vim/bundles')

" Let dein manage dein
" Required:
call dein#add('/Users/arseniyzorin/.vim/bundles/repos/github.com/Shougo/dein.vim')

call dein#add('morhetz/gruvbox')
call dein#add('preservim/nerdtree')
call dein#add('neoclide/coc.nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('dhruvasagar/vim-table-mode')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" Install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" More colours to the terminal
set t_Co=256

" Global line numeration (only current line with rnu on)
set nu

" Relative line Numeration
set rnu

" Highlight the syntax
syn on

" Spell check
set spell
set spelllang=en,ru

" Basic nvigation even with russian layout
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Bye vi
set nocompatible

set re=0

" Fuzzy search (down into subfolders)
set path+=**

" Display all matching files when tab complete
set wildmenu

" Make Airline appear before split
set laststatus=2

" Airline powerline fonts
let g:airline_powerline_fonts = 1

" Groovebox theme
colorscheme gruvbox
set background=dark
set termguicolors

" save cursor position
set viminfo='10,\"100,:20,%,n~/.viminfo

filetype plugin on

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Tabbulation
" set smarttab
set autoindent		" Indent according to previous line.
set expandtab
set tabstop =2		" Show existing tabulations
set shiftwidth =2
" set softtabstop =2	" Tab key indents by 4 spaces.

" Save with root permissions
cnoremap w!! w !sudo tee > /dev/null %

" spell check highlighting
hi clear SpellBad
hi SpellBad cterm=underline

" Run NERDTree on vim startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
