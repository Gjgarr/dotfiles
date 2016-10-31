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
Plugin 'hiqsol/pgsql.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
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

au FileType python set ts=4 sts=4 sw=4 expandtab ai ff=unix
au FileType php    set ts=2 sts=2 sw=2 expandtab ai ff=unix
au FileType perl   set ts=4       sw=4              ff=unix
let g:syntastic_enable_perl_checker = 1
au BufRead,BufNewFile *.gtxt set filetype=gtxt
let g:sql_type_default = 'pgsql'

set smarttab
set wrap

set t_Co=256
syntax on
set background=dark
colorscheme gruvbox
"colorscheme jellybeans

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

" vim-move config
let g:move_key_modifier = 'C'

" easy-motion config
map s <Plug>(easymotion-s)

" vim-easy-align config
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-better-whitespace config
highlight ExtraWhitespace ctermbg = DarkGray

" ctrlp config
let g:ctrlp_map        = '<c-p>'
let g:ctrlp_cmd        = 'CtrlPBuffer'
let g:ctrlp_extensions = ['line']

" jellybeans config
"let g:jellybeans_overrides = {
"\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
"\}


if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
