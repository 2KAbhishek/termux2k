#!/bin/bash

#Setup script for Oh-My-Termux
echo -e "\u001b[32;1m Setting up Dotfiles...\u001b[0m"

echo -e " \u001b[37;1m\u001b[4mSelect an option:\u001b[0m"
echo -e "  \u001b[34;1m (1) Install oh-my-zsh \u001b[0m"
echo -e "  \u001b[34;1m (2) Install zsh plugins \u001b[0m"
echo -e "  \u001b[34;1m (3) Install vim plugins \u001b[0m"
echo -e "  \u001b[34;1m (4) Install tmux plugins \u001b[0m"
echo -e "  \u001b[34;1m (5) Setup symlinks \u001b[0m"
echo -e "  \u001b[31;1m (0) Exit \u001b[0m"

echo -en "\u001b[32;1m ==> \u001b[0m"

read -r option

case $option in

"1")echo -e "\u001b[7m Installing oh-my-zsh...\u001b[0m"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ;;

"2")echo -e "\u001b[7m Installing zsh plugins...\u001b[0m"
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
    git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
    git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
    ;;

"3")echo -e "\u001b[7m Installing vim plugins... \u001b[0m"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginUpdate +qall
    ;;

"4")echo -e "\u001b[7m Installing tmux plugins... \u001b[0m"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    tmux start-server
    tmux new-session -d
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    tmux kill-server
    ;;

"5")echo -e "\u001b[7m Setting up symlinks... \u001b[0m"
    echo -e "\u001b[33;1m Backup existing files? (y/n) \u001b[0m"
    read -r backupOption
    if [[ $backupOption == "y" ]]; then
        echo -e "\u001b[33;1m Backing up existing files... \u001b[0m"
    mv -iv ~/bin ~/bin.old
    mv -iv ~/.config/bat/config ~/.config/bat/config.old
    mv -iv ~/.config/nvim ~/.config/nvim.old
    mv -iv ~/.config/ranger ~/.config/ranger.old
    mv -iv ~/.gitconfig ~/.gitconfig.old
    mv -iv ~/.tmux.conf ~/.tmux.conf.old
    mv -iv ~/.vimrc ~/.vimrc.old
    mv -iv ~/.zshrc ~/.zshrc.old
    mv -iv ~/.termux ~/.termux.old
    echo -e "\u001b[36;1m Remove backups with 'rm -ir ~/.*.old && rm -ir ~/.config/*.old'. \u001b[0m"
    else
        echo -e "\u001b[36;1m Skipping backups. \u001b[0m"
    fi

    echo -e "\u001b[36;1m Adding symlinks...\u001b[0m"
    ln -sfnv "$PWD/bin/" ~/bin
    ln -sfnv "$PWD/.config/bat/config" ~/.config/bat/config
    ln -sfnv "$PWD/.config/nvim/" ~/.config/nvim
    ln -sfnv "$PWD/.config/ranger/" ~/.config/ranger
    ln -sfnv "$PWD/.gitconfig" ~/.gitconfig
    ln -sfnv "$PWD/.tmux.conf" ~/.tmux.conf
    ln -sfnv "$PWD/.vimrc" ~/.vimrc
    ln -sfnv "$PWD/.zshrc" ~/.zshrc
    cp -iurv "$PWD/.termux" ~/.termux
    echo -e "\u001b[36;1m Remove backups with 'rm -ir ~/.*.old && rm -ir ~/.config/*.old'. \u001b[0m"
    ;;

"0")echo -e "\u001b[32;1m Bye! \u001b[0m"
    exit 0
    ;;

*)echo -e "\u001b[31;1m Invalid option entered! \u001b[0m"
    exit 1
    ;;
esac

exit 0
