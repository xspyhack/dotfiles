set nocompatible       " be iMproved, required
filetype off           " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'winmanager'
Plugin 'taglist.vim'
Plugin 'SuperTab'
Plugin 'https://github.com/Valloric/YouCompleteMe'
" Git plugin not hosted on GitHub
Plugin 'git://github.com/jiangmiao/auto-pairs.git' 
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

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

"some options
syntax on
syntax enable
set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
colorscheme desert
set tag=tag

" maps
nmap <F12> :!ctags -R *<cr> 
nmap cw :WMToggle<cr>
nmap tl :Tlist<cr>
nmap gtk :set tags+=~/.vim/bundle/tags4vim/gtk+-2.0.tags<cr>
nmap <F9> :tabp<cr>
nmap <F10> :tabn<cr>

" vim-powerline plugin
set laststatus=2
set t_Co=256
let g:Powerline_symblos = 'unicode'
set encoding=utf8

" taglist plugin
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Process_File_Always=1

" neocomplacache plugin
"let g:neocomplcache_enable_at_startup=1

" Other options
let g:winManagerWindowLayout='FileExplorer|TagList'
set backspace=2
let g:syntastic_ignore_files=[".*\.py$"] "ignore the syntax test to python files

"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1

" fuck buftype
set bt=acwrite
