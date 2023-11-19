#!/bin/bash

# Fetch submodules
git submodule update --init --recursive --remote

# Setup script for Oh-My-Termux
function install_packages {
    echo -e "\u001b[7m Installing required packages... \u001b[0m"
    pkg install -y curl git zsh python vim neovim tmux bat fzf zoxide fd \
        lsd gh git-delta lazygit openssh ranger ripgrep \
        exa unzip htop ripgrep termux-tools openssh
}

function backup_configs {
    echo -e "\u001b[33;1m Backing up existing files... \u001b[0m"
    mv -v ~/bin ~/bin.old
    mv -v ~/.termux ~/.termux.old

    mv -v ~/.config/bat/config ~/.config/bat/config.old
    mv -v ~/.config/broot/conf.toml ~/.config/broot/conf.toml.old
    mv -v ~/.config/cmus/darkwind.theme ~/.config/cmus/darkwind.theme.old
    mv -v ~/.config/delta ~/.config/delta.old
    mv -v ~/.config/htop ~/.config/htop.old
    mv -v ~/.config/lazygit ~/.config/lazygit.old
    mv -v ~/.config/ranger ~/.config/ranger.old
    mv -v ~/.config/shell ~/.config/shell.old
    mv -v ~/.config/topgrade.toml ~/.config/topgrade.toml.old
    mv -v ~/.bashrc ~/.bashrc.old
    mv -v ~/.dircolors ~/.dircolors.old
    mv -v ~/.gitconfig ~/.gitconfig.old
    mv -v ~/.npmrc ~/.npmrc.old
    mv -v ~/.pryrc ~/.pryrc.old
    mv -v ~/.prettierrc ~/.prettierrc.old
    mv -v ~/.pystartup ~/.pystartup.old
    mv -v ~/.tmux.conf ~/.tmux.conf.old
    mv -v ~/.vimrc ~/.vimrc.old
    mv -v ~/.Xresources ~/.Xresources.old
    mv -v ~/.zshrc ~/.zshrc.old
    echo -e "\u001b[36;1m Remove backups with 'rm -ir ~/.*.old && rm -ir ~/.config/*.old'. \u001b[0m"
}

function setup_symlinks {
    echo -e "\u001b[7m Setting up symlinks... \u001b[0m"
    ln -sfnv "$PWD/config/bin" ~/bin
    cp -rv "$PWD/config/.termux" ~/

    ln -sfnv "$PWD/dots2k/config/bat/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/broot/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/cmus/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/delta/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/htop/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/lazygit/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/ranger/" ~/.config/
    ln -sfnv "$PWD/dots2k/config/shell" ~/.config/
    ln -sfnv "$PWD/dots2k/config/topgrade.toml" ~/.config/
    ln -sfnv "$PWD/dots2k/config/.bashrc" ~/
    ln -sfnv "$PWD/dots2k/config/.dircolors" ~/
    ln -sfnv "$PWD/dots2k/config/.gitconfig" ~/
    ln -sfnv "$PWD/dots2k/config/.npmrc" ~/
    ln -sfnv "$PWD/dots2k/config/.prettierrc" ~/
    ln -sfnv "$PWD/dots2k/config/.pryrc" ~/
    ln -sfnv "$PWD/dots2k/config/.pystartup" ~/
    ln -sfnv "$PWD/dots2k/config/.tmux.conf" ~/
    ln -sfnv "$PWD/dots2k/config/.vimrc" ~/
    ln -sfnv "$PWD/dots2k/config/.Xresources" ~/
    ln -sfnv "$PWD/dots2k/config/.zshrc" ~/
}

function install_oh_my_zsh {
    echo -e "\u001b[7m Installing oh-my-zsh...\u001b[0m"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

function install_zsh_plugins {
    echo -e "\u001b[7m Installing zsh plugins...\u001b[0m"
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
    git clone https://github.com/marlonrichert/zsh-autocomplete ~/.oh-my-zsh/custom/plugins/zsh-autocomplete
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/clarketm/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
    git clone https://github.com/z-shell/F-Sy-H.git ~/.oh-my-zsh/custom/plugins/F-Sy-H
    git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
    git clone https://github.com/unixorn/git-extra-commands.git ~/.oh-my-zsh/custom/plugins/git-extra-commands
    git clone https://github.com/Aloxaf/fzf-tab.git ~/.oh-my-zsh/custom/plugins/fzf-tab
    git clone https://github.com/hlissner/zsh-autopair ~/.oh-my-zsh/custom/plugins/zsh-autopair
    git clone https://github.com/MichaelAquilina/zsh-auto-notify.git ~/.oh-my-zsh/custom/plugins/auto-notify
}

function install_vim_plugins {
    echo -e "\u001b[7m Installing plugin manager \u001b[0m"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo -e "\u001b[7m Installing plugins for vim and nvim... \u001b[0m"
    vim +PlugUpdate +qall
    pip install neovim
    nvim -c UpdateRemotePlugins
}

function install_tmux_plugins {
    echo -e "\u001b[7m Installing tmux plugins... \u001b[0m"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux start-server
    tmux new-session -d
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    tmux kill-server
}

function install_extras {
    install_oh_my_zsh
    install_zsh_plugins
    install_vim_plugins
    install_tmux_plugins
}

function setup_dotfiles {
    echo -e "\u001b[7m Setting up Dotfiles... \u001b[0m"
    install_packages
    install_extras
    backup_configs
    setup_symlinks
    echo -e "\u001b[7m Done! \u001b[0m"
}

if [ "$1" = "--all" ] || [ "$1" = "-a" ]; then
    setup_dotfiles
    exit 0
fi

if [ "$1" = "--install" ] || [ "$1" = "-i" ]; then
    install_packages
    install_extras
    exit 0
fi

if [ "$1" = "--symlinks" ] || [ "$1" = "-s" ]; then
    setup_symlinks
    exit 0
fi

# Menu TUI
echo -e "\u001b[32;1m Setting up Dotfiles...\u001b[0m"

echo -e " \u001b[37;1m\u001b[4mSelect an option:\u001b[0m"
echo -e "  \u001b[34;1m (0) Setup Everything \u001b[0m"
echo -e "  \u001b[34;1m (1) Install Packages \u001b[0m"
echo -e "  \u001b[34;1m (2) Install Extras \u001b[0m"
echo -e "  \u001b[34;1m (3) Backup Configs \u001b[0m"
echo -e "  \u001b[34;1m (4) Setup Symlinks \u001b[0m"
echo -e "  \u001b[31;1m (*) Anything else to exit \u001b[0m"

echo -en "\u001b[32;1m ==> \u001b[0m"

read -r option

case $option in

"0")
    setup_dotfiles
    ;;

"1")
    install_packages
    ;;

"2")
    install_extras
    ;;

"3")
    backup_configs
    ;;

"4")
    setup_symlinks
    ;;

*)
    echo -e "\u001b[31;1m Invalid option entered, Bye! \u001b[0m"
    exit 0
    ;;
esac

exit 0
