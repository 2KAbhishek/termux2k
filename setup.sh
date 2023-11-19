#!/bin/bash

git submodule update --init --recursive --remote

cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1

ln -sfnv "$PWD/config/bin" ~/bin
cp -rv "$PWD/config/.termux" ~/
