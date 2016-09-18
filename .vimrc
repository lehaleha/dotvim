" Basics
"---------------------
let $LANG = 'en'

" Vundle setup
source $HOME/.vim/.bundles.vim

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
vmap <C-H> 5h
vmap <C-J> 5j
vmap <C-K> 5k
vmap <C-L> 5l

" Exit from insert mode and move on Ctrl-move
imap <C-H> <Esc>h
imap <C-J> <Esc>j
imap <C-K> <Esc>k
imap <C-L> <Esc>l

" Remap kj/jk/fj/jf to Esc
"imap jk <Esc>
"imap kj <Esc>
imap fj <Esc>
imap jf <Esc>

" Reduce wait timeout for combos, while we are here
set timeoutlen=350

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
"colo lightcolors
colorscheme jellybeans

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


