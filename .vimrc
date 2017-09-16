" Pathogen plugin system
execute pathogen#infect()

filetype plugin indent on
" Syntax highlighting and filetype recognition
syntax on
filetype on
" Making vim not use a backup or swapfile and lazy redrawing
set noswapfile
set nobackup
set lazyredraw
" Set show command in bottom
set showcmd
" Showing autocomplete for command menu
set wildmenu
" Setting tab equal to 4 spaces
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
" Word wrap, highlighting search terms, showing line # & ruler
set wrap
set relativenumber
"set cursorline
set ruler
" Search settings
set hlsearch
set incsearch
set ignorecase
" Showing matching brackets
set showmatch
" Allow backspacing over whitespace and between lines
set backspace=indent,eol,start
" Margin at top/bottom of screen when scrolling
set scrolloff=4
"ColorScheme stuff
set term=xterm
set t_Co=256
colorscheme OceanicNext
set colorcolumn=80
" Removing the current mode text because my plugin shows it better
set noshowmode

" =============== Custom keybindings to do stuff ===============
" Mapping j + k in insert mode to <ESC>
inoremap jk <ESC>
" Curly bracket + enter opens brackets across 3 lines
inoremap {<CR> {<CR>}<ESC>ko
" Parenthesis + enter = (Cursor);
inoremap (<CR> ();<LEFT><LEFT>

" Making split pane navigation easier by using ctrl+direction
nnoremap <C-J> <C-W><C-J>                                                       
nnoremap <C-L> <C-W><C-L>                                                       
nnoremap <C-H> <C-W><C-H>                                                       
nnoremap <C-K> <C-W><C-K>

" HTML tag insertion in normal mode
nnoremap ,div i<div></div><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
nnoremap ,span i<span></span><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>

" Making ctrl+p start the CtrlP plugin
let g:ctrlp_map = '<c-p>'

" =============== Custom template file insertion ===============
" Inserting template HTML file with this binding
nnoremap ,html :.-1read ~/.vim/templates/html/html.txt<CR>
" Inserting a generic function template
nnoremap ,func :.-1read ~/.vim/templates/functions/template.txt<CR>
" Simple loop templates
nnoremap ,for :.-1read ~/.vim/templates/loops/for_loop.txt<CR>
nnoremap ,while :.-1read ~/.vim/templates/loops/while_loop.txt<CR>
" Common lines of code 
" Simple std::cout << X << std::endl;
nnoremap ,std :.-1read ~/.vim/templates/cpp/std.txt<CR>

