" Basics
"---------------------
set nocompatible              " be iMproved, required
filetype off                  " required by Vundle
let $LANG = 'en'


" Hacks & workarounds
"---------------------
" None now (yet).

" Vundle setup
" ------------

" set the runtime path to include Vundle and initialize
" NOTE path specified for Windows only, on *NIX default settings are OK:
"
"       set rtp+=~/.vim/bundle/Vundle.vim
"       call vundle#begin()
"
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree.git'        " NERDTree
Plugin 'vim-scripts/YankRing.vim'       " YankRing 


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


" Common
" ------

"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" Setup Ctrl+^ to switch between English/Russian
set keymap=russian-jcukenwin 
" Set English layout as default
set iminsert=0

" Set English layout as default for search
set imsearch=0
" Ignore case in search
set ic
" Highlight search
set hls
" Use incremental search
set is
" Switch to case-sensitive search on first uppercase symbol
set smartcase

" ��������� �������� �������
set nobackup
" ��������� �������� swap ������
set noswapfile

" ���������� ��� ������ � �������� ������� (����� w, b, * ��������
" ������� �����)
set iskeyword=@,48-57,_,192-255
" ������ ��������� ������ ��� ���������������
set fileencodings=utf-8,cp1251,koi8-r,cp866
" ������������� �� ��������� UTF-8
set encoding=utf-8

set fileformats=dos

" ������ ������ ��������� � ������ �������
set ts=4
set expandtab
" ������ ������� ��� ������ - 4 �������
set sw=4
" ������ ���������� ��������� ������ ��� ������� ����
set laststatus=2
" �������� ������ �� ���������� ������
set autoindent
" �������� '�����' �������������� ����������� ��������
set smartindent
" ��������� ������� �����
set nowrap
" �������� ��������� ����������
syntax on
" Turn off max text width, not needed in most cases
set textwidth=0

" ��� �������� � ����� ����� (� ������� :e :next � �.�.) ������ �������
" �������
set hidden

" ��������� ������, � ������� ��������� � ������ ������ ������
set cursorline

" ��������� ������ ������������
set guioptions-=T
" ��������� ����������� �������
set guioptions+=c
" ��������� ����������� ���� (��������� �������� ������ �����)
set guioptions-=e

" ��������� "���� ����������"
set scrolloff=5
" ���������� ������������ �� ������
    nmap <C-H> 5h
    nmap <C-J> 5j
    nmap <C-K> 5k
    nmap <C-L> 5l

" ���������� ������ ����� �� � ����� ������� ��� �������� � ����� �������
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Selecting just pasted text on "gp" ( http://vim.wikia.com/wiki/Selecting_your_pasted_text)
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" �������� ����������� ����������� � ������ ������ ������� � ������ ������ ���� ������.
" � �������, ���� �� �������� 2d, �� � ������ ������ ���� ������ Vim ��������� ������ 2d.
set showcmd
" �������� ����������� �������������� ���������� � ��������� ������
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P


" Appearance
"------------

" Color schema
colo lightcolors

" gVim window default size
set columns=140
set lines=50

" Fold column width
set foldcolumn=2

" ����������� ������ ���� ����� ����� 0 (�� ��������� - 1)
set winminheight=0
" ���������� ����� DejaVu LGC Sans Mono
set guifont=Consolas:h11:cRUSSIAN


" Unknown stuff
" -------------

runtime! ftdetect/*.vim


