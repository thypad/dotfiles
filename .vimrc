" ##############################################################################
" ############################# Vundle Plugin ##################################
" ##############################################################################
set nocompatible              " be iMproved, required filetype off                  " required 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


"############################## MY PLUGINS ###################################

Plugin 'scrooloose/syntastic' " Syntax Checking/Highlighting

"--- Python plugins ----
Plugin 'vim-scripts/indentpython.vim' "better python indentation

"--- Vim Look ---
Plugin 'vim-airline/vim-airline' "status bar
Plugin 'vim-airline/vim-airline-themes' "status bar themes
Plugin 'altercation/vim-colors-solarized'

"Plugin 'tpope/vim-surround'

Plugin 'christoomey/vim-tmux-navigator'

"--- HTML5/CSS/Javascript ----
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'avakhov/vim-yaml'
Plugin 'leafgarland/typescript-vim'
"Plugin 'burnettk/vim-angular'

"-----------------------------


call vundle#end()
filetype plugin indent on    " required

"#############################################################################




" -------------------- Colors ------------------------
syntax enable           " enable syntax processing
set background=dark
colorscheme solarized



" -------------------- Space and Tabs ------------------------
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces



" -------------------- UI Config ------------------------
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set scrolloff=3
set nowrap        " don't wrap lines



set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep



" -------------------- Search ------------------------
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise


" -------------------- Folding ------------------------
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za
set foldmethod=indent   " fold based on indent level



" -------------------- Movement ------------------------
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]


let mapleader=","       " leader is comma
" jk is escape

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

inoremap kj <esc>



" toggle gundo
nnoremap <leader>u :GundoToggle<CR>




set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup




"========== Splitting ==========
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"========== UTF-8 Support ==========
set encoding=utf-8


"============ YouCompleteMe Customization =============
"let mapleader=" "
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"=====================================================

let python_highlight_all=1
syntax on


"================= NERDTree Customization ================
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>


"================= Airline Customization =================
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 "make status appear even with only one tab
let g:airline_powerline_fonts = 1 "use nice powerline symbols

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

"================== Solarized Colorscheme =================
"syntax enable

set pastetoggle=<F2>

"set autoindent
set showmode
set hidden
set wildmode=list:longest
"set visualbell
set colorcolumn=85
set ttyfast
set backspace=indent,eol,start
set undofile


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" " Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"set list

"=================== Tagbar =======================
nmap <F8> :TagbarToggle<CR>


let &colorcolumn=join(range(81,999),",")

let g:indentLine_char='¦'
autocmd BufNewFile,BufRead *.ts set syntax=typescript
