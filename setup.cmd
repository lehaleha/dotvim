echo Setup curl.cmd for Vundle (https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows)
copy curl.cmd "c:\Program Files (x86)\Git\cmd\curl.cmd"

echo Get Vundle
cd %USERPROFILE%
git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim

REM Make hardlink to config
mklink /H ..\_vimrc .vimrc
