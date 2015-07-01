call plug#begin('~/.vim/bundle')

"set rtp+=~/.vim/bundle/Vundle.vim/
"call vundle#begin()

"--- Tools ---
"Plug 'gmarik/Vundle.vim'
Plug 'scrooloose/nerdtree',                          {'on': 'NERDTreeToggle' }
" Plug 'wincent/Command-T'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'nelstrom/vim-visual-star-search'
Plug 'ggreer/the_silver_searcher'
" Plug 'marijnh/tern_for_vim'
Plug 'kien/ctrlp.vim'
" Plug 'Lokaltog/vim-powerline'
" Plug 'vim-scripts/sessions.vim'
Plug 'godlygeek/tabular'
Plug 'Rykka/riv.vim'
Plug 'vim-scripts/L9'
"--- Look&Feel ---
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'drmikehenry/vim-fontsize'
"--- Git ---
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'
"--- Programming ---
Plug 'Valloric/YouCompleteMe',                       {'do':  './install.sh --clang-completer' }
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
"--- Markdown --
Plug 'plasticboy/vim-markdown',                      {'for': 'mkd'}
"--- HTML --
Plug 'othree/html5.vim',                             {'for': 'html'}
"--- XML --
Plug 'othree/xml.vim',                               {'for': 'xml'}
"--- Javascript --
Plug 'othree/javascript-libraries-syntax.vim',       {'for': 'javascript'}
"--- Scala ---
Plug 'derekwyatt/vim-scala',                         {'for': 'scala'}
"--- Go ---
Plug 'fatih/vim-go',                                 {'for': 'go'}

call plug#end()

" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
