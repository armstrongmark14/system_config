#!/bin/bash

# Installing vim plugins and setting them up

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
cd ~/.vim/bundle &&\
git clone https://github.com/scrooloose/nerdtree && \
git clone https://github.com/scrooloose/syntastic && \
git clone https://github.com/tpope/vim-surround && \
git clone https://github.com/kien/ctrlp.vim && \
git clone https://github.com/bling/vim-airline && \
git clone https://github.com/tpope/vim-speeddating && \
git clone https://github.com/tpope/vim-repeat
