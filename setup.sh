#!/bin/bash

git submodule update --init --recursive --remote

cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1

ln -sfn "$PWD/config/bin" ~/bin
cp -r "$PWD/config/.termux" ~/
