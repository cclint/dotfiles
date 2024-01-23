" a bunch of sets 
syntax on
set cursorline
highlight ColorColumn ctermbg=magenta
call matchadd('colorColumn','\%81v',100)
set visualbell
set hlsearch
set expandtab " replace tab with space
set softtabstop=2
set autoindent
set showmatch
set textwidth=80 
set ruler
set backspace=indent,eol,start 
set shiftwidth=4
set autoread " reload file if changed outside of vim
" This allows intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific 
set encoding=utf-8 "The encoding displayed
set fileencoding=utf-8 "The encoding written to file
filetype off		" required
inoremap { {<CR>}<Esc>ko
set title " show title in console title bar
" set vb this will turn off error beep/flash
set showcmd " show command in bottom bar
set cindent 
set incsearch " do incremental searching
set sm " show matching parenthesis 
set exrc " local vimrc
" line numbering
set number
" spelling
set spell spelllang=en_us

" autocomplete parentheses
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" enable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map <C-n> :NERDTree

" PLUGINS 
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'

call plug#end()

colorscheme gruvbox
set background=dark

" Filetype-specific Settings
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Comment Headers
" *****************
" Your Custom Section
" *****************

" Backup and Swap Files
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/swap
