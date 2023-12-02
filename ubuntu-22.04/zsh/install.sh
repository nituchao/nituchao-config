#!/usr/bin/bash

rm -v ~/.zshrc_bk
mv -v ~/.zshrc ~/.zshrc_bk

CURRDIR=`pwd`
ln -sv $CURRDIR/zshrc ~/.zshrc
