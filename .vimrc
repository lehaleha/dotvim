set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" To fix issue on Windows with temp folder too deep in /user/bla-bla
" Should be fixed, update vim!
let $TMP = "c:\temp"
let $TEMP = "c:\temp"
let $LANG = 'en'

" ������������� ������� ���� �� ���������
set columns=140
set lines=50

" ������ ������� �������
set foldcolumn=2

" ���������� keymap, ����� �� Ctrl+^ ������������ �� ������� � �������
set keymap=russian-jcukenwin 
" �� ��������� - ��������� ���������
set iminsert=0

" �� ��������� - ��������� ��������� ��� ������
set imsearch=0
" ������������ ������� ��� ������
set ic
" ������������ �����
set hls
" ������������ ��������������� �����
set is
" ������������ ����������������� ����� ��� ����� �������� � ������� ��������
set smartcase

" ��������� �������� �������
set nobackup
" ��������� �������� swap ������
set noswapfile

" ����������� ������ ���� ����� ����� 0 (�� ��������� - 1)
set winminheight=0
" ���������� ����� DejaVu LGC Sans Mono
set guifont=Consolas:h11:cRUSSIAN

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

"�������� �������� �����
"-----------------------
colo lightcolors

" ����������� ������� 
" ------------------
set foldenable
set foldmethod=manual

" ������� ������������ ������� (���� �� ����������, ��� ������������ ������
" ������ %)) 
"map <F4>  <esc>:call SWITCHFOLD()<cr>
"function SWITCHFOLD()
"    if &foldmethod=="marker"
"        set foldmethod=syntax
"        return
"    endif
"    if &foldmethod=="syntax"
"        set foldmethod=indent
"        return
"    endif
"    if &foldmethod=="indent"
"        set foldmethod=manual
"        return
"    endif
"    if &foldmethod=="manual"
"        set foldmethod=marker
"        return
"    endif
"endfunction

" ������
" ------

filetype plugin indent on
syntax on
runtime! ftdetect/*.vim

