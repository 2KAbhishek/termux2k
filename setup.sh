#!/bin/bash

# Setup script for Oh-My-Termux
function install_packages {
    echo -e "\u001b[7m Installing required packages... \u001b[0m"
    pkg install -y curl git zsh python vim neovim tmux bat fzf fasd fd \
        lsd gh git-delta lazygit openssh pacman ranger silversearcher-ag
}

function install_oh_my_zsh {
    echo -e "\u001b[7m Installing oh-my-zsh...\u001b[0m"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
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
    mv -v ~/.config/nvim ~/.config/nvim.old
    mv -v ~/.config/ranger ~/.config/ranger.old
    mv -v ~/.config/shell ~/.config/shell.old
    mv -v ~/.bashrc ~/.bashrc.old
    mv -v ~/.gitconfig ~/.gitconfig.old
    mv -v ~/.p10k.zsh ~/.p10k.zsh.old
    mv -v ~/.pystartup ~/.pystartup.old
    mv -v ~/.tmux.conf ~/.tmux.conf.old
    mv -v ~/.vimrc ~/.vimrc.old
    mv -v ~/.zshrc ~/.zshrc.old
    echo -e "\u001b[36;1m Remove backups with 'rm -ir ~/.*.old && rm -ir ~/.config/*.old'. \u001b[0m"
}

function setup_symlinks {
    echo -e "\u001b[7m Setting up symlinks... \u001b[0m"
    ln -sfnv "$PWD/bin" ~/bin
    ln -sfnv "$PWD/.termux" ~/.termux
    ln -sfnv "$PWD/.config/bat/" ~/.config/
    ln -sfnv "$PWD/.config/broot/" ~/.config/
    ln -sfnv "$PWD/.config/cmus/" ~/.config/
    ln -sfnv "$PWD/.config/delta/" ~/.config/
    ln -sfnv "$PWD/.config/htop/" ~/.config/
    ln -sfnv "$PWD/.config/nvim" ~/.config/
    ln -sfnv "$PWD/.config/ranger/" ~/.config/
    ln -sfnv "$PWD/.config/shell" ~/.config/
    ln -sfnv "$PWD/.bashrc" ~/
    ln -sfnv "$PWD/.gitconfig" ~/
    ln -sfnv "$PWD/.p10k.zsh" ~/
    ln -sfnv "$PWD/.pystartup" ~/
    ln -sfnv "$PWD/.tmux.conf" ~/
    ln -sfnv "$PWD/.vimrc" ~/
    ln -sfnv "$PWD/.zshrc" ~/
}

function install_zsh_plugins {
    echo -e "\u001b[7m Installing zsh plugins...\u001b[0m"
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
    git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
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
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    echo -e "\u001b[7m Installing plugins for vim and nvim... \u001b[0m"
    vim +PlugUpdate +qall
    nvim -c 'PlugUpdate | PlugClean | quitall'
}

function install_tmux_plugins {
    echo -e "\u001b[7m Installing tmux plugins... \u001b[0m"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux start-server
    tmux new-session -d
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    tmux kill-server
}

function setup_dotfiles {
    echo -e "\u001b[7m Setting up Dotfiles... \u001b[0m"
    install_packages
    install_oh_my_zsh
    backup_configs
    setup_symlinks
    install_zsh_plugins
    install_vim_plugins
    install_tmux_plugins
    echo -e "\u001b[7m Done! \u001b[0m"
}

if [ "$1" = "--all" -o "$1" = "-a" ]; then
    setup_dotfiles
    exit 0
fi

# Menu TUI
echo -e "\u001b[32;1m Setting up Dotfiles...\u001b[0m"

echo -e " \u001b[37;1m\u001b[4mSelect an option:\u001b[0m"
echo -e "  \u001b[34;1m (0) Install packages \u001b[0m"
echo -e "  \u001b[34;1m (1) Install oh-my-zsh \u001b[0m"
echo -e "  \u001b[34;1m (2) Backup current config \u001b[0m"
echo -e "  \u001b[34;1m (3) Setup symlinks \u001b[0m"
echo -e "  \u001b[34;1m (4) Install zsh plugins \u001b[0m"
echo -e "  \u001b[34;1m (5) Install vim plugins \u001b[0m"
echo -e "  \u001b[34;1m (6) Install tmux plugins \u001b[0m"
echo -e "  \u001b[31;1m (*) Anything else to exit \u001b[0m"

echo -en "\u001b[32;1m ==> \u001b[0m"

read -r option

case $option in

"0")
    install_packages
    ;;

"1")
    install_oh_my_zsh
    ;;

"2")
    backup_configs
    ;;

"3")
    setup_symlinks
    ;;

"4")
    install_zsh_plugins
    ;;

"5")
    install_vim_plugins
    ;;

"6")
    install_tmux_plugins
    ;;


*)
    echo -e "\u001b[31;1m Invalid option entered, Bye! \u001b[0m"
    exit 0
    ;;
esac

exit 0
