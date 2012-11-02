WD=`pwd`
if [[ $WD =~ dotfiles$ ]]
then echo -n
else cd dotfiles
fi
cp -i .bash_profile ~/.bash_profile
cp -i .gitconfig ~/.gitconfig
cp -i .inputrc ~/.inputrc
cp -i .vimrc ~/.vimrc
source ~/.bash_profile

