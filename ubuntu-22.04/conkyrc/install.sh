#!/usr/bin/bash

rm -v ~/.conkyrc_bk
mv -v ~/.conkyrc ~/.conkyrc_bk

CURRDIR=`pwd`
ln -sv $CURRDIR/conkyrc ~/.conkyrc
