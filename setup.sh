#!/bin/bash

setup_termux2k() {
    cd "$PWD/dots2k" && ./setup.sh && cd .. || exit 1
}

main() {
    if [ -f "$PWD/dots2k/setup.sh" ]; then
        setup_termux2k
    else
        git submodule update --init --recursive --remote && setup_termux2k
    fi
}

main "$@"
