""""""""""
" General
""""""""""
" Load plugins
execute pathogen#infect() 

" Setup terminal if needed
set term=ansi 

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Add markdown files
au BufRead,BufNewFile *.md set filetype=markdown

"""""""""""""""""""""
" VIM user interface
"""""""""""""""""""""
" Wrap on words
set wrap linebreak

" Attempt to indent code
set smartindent

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set appearances
syntax enable
set background=dark
colorscheme koehler

set guifont=Monaco:h15
set tabstop=4

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-\> :NERDTreeToggle<CR>
map <\> :TagbarToggle<CR>
