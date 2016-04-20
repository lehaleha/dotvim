echo Setup curl.cmd for Vundle (https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows)
copy curl.cmd "c:\Program Files (x86)\Git\cmd\curl.cmd"

REM Copy color schemas
mkdir ..\vimfiles\Colors
copy .\Colors\*.* ..\vimfiles\Colors

echo Get Vundle
pushd %USERPROFILE%
git clone https://github.com/gmarik/Vundle.vim.git ./vimfiles/bundle/Vundle.vim

REM Make hardlink to config files
popd
mklink /H "../_vimrc" "./.vimrc"
mklink /H "../.bundles.vim" "./.bundles.vim"

REM Run Vim for the first time to install bundles
set PATH=%PATH%;C:\Program Files (x86)\Vim\vim74\
vim -u ./.bundles.vim +BundleInstall +q
