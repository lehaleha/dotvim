set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" To fix issue on Windows with temp folder too deep in /user/bla-bla
" Should be fixed, update vim!
let $TMP = "c:\temp"
let $TEMP = "c:\temp"
let $LANG = 'en'

" устанавливаем размеры окна по умолчанию
set columns=140
set lines=50

" Ширина колонки складок
set foldcolumn=2

" установить keymap, чтобы по Ctrl+^ переключался на русский и обратно
set keymap=russian-jcukenwin 
" по умолчанию - латинская раскладка
set iminsert=0

" по умолчанию - латинская раскладка при поиске
set imsearch=0
" игнорировать регистр при поиске
set ic
" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is
" использовать регистрозависимый поиск при вводе символов в верхнем регистре
set smartcase

" Отключаем создание бэкапов
set nobackup
" Отключаем создание swap файлов
set noswapfile

" минимальная высота окна пусть будет 0 (по умолчанию - 1)
set winminheight=0
" установить шрифт DejaVu LGC Sans Mono
set guifont=Consolas:h11:cRUSSIAN

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

"Выбираем цветовую схему
"-----------------------
colo lightcolors

" Настраиваем фолдинг 
" ------------------
set foldenable
set foldmethod=manual

" Быстрое переключение методов (пока не разобрался, как использовать другие
" методы %)) 
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

" Прочее
" ------

filetype plugin indent on
syntax on
runtime! ftdetect/*.vim

