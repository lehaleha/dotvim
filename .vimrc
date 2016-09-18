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

" Отключаем создание бэкапов
set nobackup
" Отключаем создание swap файлов
set noswapfile

" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255
" Список кодировок файлов для автоопределения
set fileencodings=utf-8,cp1251,koi8-r,cp866
" Устанавливаем по умолчанию UTF-8
set encoding=utf-8

set fileformats=dos

" задать размер табуляции в четыре пробела
set ts=4
set expandtab
" размер отступа для сдвига - 4 пробела
set sw=4
" Всегда отображать статусную строку для каждого окна
set laststatus=2
" Копирует отступ от предыдущей строки
set autoindent
" Включаем 'умную' автоматическую расстановку отступов
set smartindent
" Выключаем перенос строк
set nowrap
" Включаем подсветку синтаксиса
syntax on
" Turn off max text width, not needed in most cases
set textwidth=0

" При переходе в новый буфер (с помощью :e :next и т.д.) делать текущий
" скрытым
set hidden

" Подсветка строки, в которой находится в данный момент курсор
set cursorline

" Отключаем панель инструментов
set guioptions-=T
" Отключаем графические диалоги
set guioptions+=c
" Отключаем графические табы (текстовые занимают меньше места)
set guioptions-=e

" Добавляем "поля скроллинга"
set scrolloff=5

" Ускоренное передвижение по тексту
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

" Добавление пустых строк до и после текущей без перехода в режим вставки
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Selecting just pasted text on "gp" ( http://vim.wikia.com/wiki/Selecting_your_pasted_text)
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана.
" К примеру, если вы наберете 2d, то в правом нижнем углу экрана Vim отобразит строку 2d.
set showcmd
" Включаем отображение дополнительной информации в статусной строке
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

" минимальная высота окна пусть будет 0 (по умолчанию - 1)
set winminheight=0
" установить шрифт DejaVu LGC Sans Mono
set guifont=Consolas:h11:cRUSSIAN


" Unknown stuff
" -------------

runtime! ftdetect/*.vim


