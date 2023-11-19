#!/bin/bash

function setup {
    cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1
}

if [ -f "$PWD/dots2k/setup.sh" ]; then
    setup
else
    git submodule update --init --recursive --remote && setup
fi
