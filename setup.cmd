echo Setup curl.cmd for Vundle (https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows)
copy curl.cmd "c:\Program Files (x86)\Git\cmd\curl.cmd"

echo Get Vundle
pushd %USERPROFILE%
git clone https://github.com/gmarik/Vundle.vim.git ./vimfiles/bundle/Vundle.vim

REM Make hardlink to config files
popd
mklink /H "../_vimrc" "./.vimrc"
mklink /H "../.bundles.vim" "./.bundles.vim"

REM Add Vim to PATH 
set PATH = %PATH%;C:\Program Files (x86)\Vim\vim74\

REM Run Vim for the first time to install bundles
vim -u ./.vim/bundles.vim +BundleInstall +q
