#!/usr/bin/env bash

TERMUX2K_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

setup_termux2k() {
    cd "$PWD/dots2k" && ./setup.sh "$@" && cd .. || exit 1
}

main() {
    cp -rv "$TERMUX2K_DIR/config/.termux" ~/
    ln -sfnv "$TERMUX2K_DIR/config/bin" ~/
    if [ -f "$PWD/dots2k/setup.sh" ]; then
        setup_termux2k "$@"
    else
        git submodule update --init --recursive --remote && setup_termux2k
    fi
}

main "$@"
