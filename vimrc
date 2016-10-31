runtime! debian.vim

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'matze/vim-move'
Plugin 'kshenoy/vim-signature'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()

filetype plugin indent on
set wildmenu
set foldenable
nnoremap <space> za
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10
nnoremap j gj
nnoremap k gk
set mouse=a
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set hlsearch
set incsearch

au FileType python set ts=4 sts=4 sw=4 expandtab ai ff=unix

set smarttab
set wrap

set t_Co=256
syntax on
set background=dark
colorscheme gruvbox
"colorscheme jellybeans

set noswapfile
set nu
set clipboard=unnamed

" Airline settings
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' | '
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprevious!<CR>

" Syntastic settings
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-move settings
let g:move_key_modifier = 'C'

" easy-motion config
map s <Plug>(easymotion-s)

" vim-easy-align settings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" tmux color aid
set term=screen-256color


if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
