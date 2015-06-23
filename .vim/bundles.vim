
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'derekwyatt/vim-scala'
Plugin 'othree/html5.vim'
Plugin 'othree/xml.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'majutsushi/tagbar'
" Plugin 'wincent/Command-T'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-abolish'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'ggreer/the_silver_searcher'
" Plugin 'marijnh/tern_for_vim'
Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
" Plugin 'vim-scripts/sessions.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Rykka/riv.vim'
Plugin 'vim-scripts/L9'
Plugin 'drmikehenry/vim-fontsize'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
