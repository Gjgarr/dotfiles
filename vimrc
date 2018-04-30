runtime! debian.vim

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'morhetz/gruvbox'

call vundle#end()


filetype plugin indent on
set wildmenu
set wildmode=list:longest,full
set foldenable
set foldmethod=indent
set foldlevel=50
nnoremap / /\v
vnoremap / /\v
nnoremap <space> za
nnoremap j gj
nnoremap k gk
set mouse=a
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set hlsearch
set incsearch
set list
set listchars=tab:▸\ ,eol:¬

au FileType python set ts=4 sts=4 sw=4 expandtab ai ff=unix
au FileType perl   set ts=4 sts=4 sw=4 expandtab ai ff=unix
let g:syntastic_enable_perl_checker = 1

set smarttab
set wrap

set t_Co=256
syntax on
set background=dark
colorscheme gruvbox

set noswapfile
set nu
set clipboard=unnamedplus

" For when syntax gets out of sync
map <C-l> <Esc>:syntax sync fromstart<CR>

" Airline settings
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled      = 1
let g:airline#extensions#tabline#left_sep     = ' '
let g:airline#extensions#tabline#left_alt_sep = ' | '
let g:airline_powerline_fonts                 = 1
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprevious!<CR>
" used with fugitive
let g:airline#extensions#branch#enabled       = 1

" Syntastic settings
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq   = 0

" vim-better-whitespace config
highlight ExtraWhitespace ctermbg = DarkGray


if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
