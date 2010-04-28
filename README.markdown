Installation
============

Backup your configuration:

    mv ~/.vim ~/.vim.old
    mv ~/.vimrc ~/.vimrc-old
    mv ~/.gvimrc ~/.gvimrc-old

Install:

    git clone git://github.com/evilchelu/vimfiles.git ~/.vim
    ln -s ~/.vim/vimrc.vim  ~/.vimrc
    ln -s ~/.vim/gvimrc.vim ~/.gvimrc

Notes
=====

* pathogen is used to load plugings from the ./bundle directory.
* configuration is loaded by vimrc.vim from config/
* only add your personal customizations to the top level directory, everything else should go under bundle

Stolen from
===========
adragomir
soveran
tpope
scrooloose
