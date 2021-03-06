syntax enable
set t_Co=256
colorscheme monokai

set number
"set nocompatible              " be iMproved, required
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2
set backspace=indent,eol,start
set statusline+=%#warningmsg#

set pastetoggle=<F2>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>

nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprevious<CR>

filetype plugin indent on    " required

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'crusoexia/vim-monokai'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Airline Options
let airline#extensions#tabline#enabled = 1
let airline_powerline_fonts = 1
let airline_detect_modified = 1
let g:airline_theme="papercolor"
let airline#extensions#whitespace#enabled=0

" NERDTree Options
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeIgnore = ['\.pyc$']

" Syntastic Options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
 
execute pathogen#infect()
