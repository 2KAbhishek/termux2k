<div align = "center">

<h1><a href="https://2kabhishek.github.io/termux2k">termux2k</a></h1>

<a href="https://github.com/2KAbhishek/termux2k/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/termux2k?style=flat&color=eee&label="> </a>

<a href="https://github.com/2KAbhishek/termux2k/graphs/contributors">
<img alt="People" src="https://img.shields.io/github/contributors/2kabhishek/termux2k?style=flat&color=ffaaf2&label=People"> </a>

<a href="https://github.com/2KAbhishek/termux2k/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/termux2k?style=flat&color=98c379&label=Stars"></a>

<a href="https://github.com/2KAbhishek/termux2k/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/termux2k?style=flat&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/termux2k/watchers">
<img alt="Watches" src="https://img.shields.io/github/watchers/2kabhishek/termux2k?style=flat&color=f5d08b&label=Watches"> </a>

<a href="https://github.com/2KAbhishek/termux2k/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/2kabhishek/termux2k?style=flat&color=e06c75&label="> </a>

<h3>Dev CLI setup, in the palm of your hands ✋📱</h3>

<figure>
  <img src="https://raw.githubusercontent.com/2KAbhishek/termux2k/master/images/screenshot.jpg" alt="termux2k Demo" style="width:100%">
  <br/>
  <figcaption>Termux screenshot</figcaption>
</figure>

</div>

## What is this

My personal configs, carefully and passionately crafted for setting up an optimal CLI dev experience on the go.

Bootstraps `termux` with `oh-my-zsh`, custom `p10k` prompt, `neovim`, `tmux`, `ranger` & `powerline` fonts and a bunch of other useful CLI tools and configs.

## Inspiration

Wanting a super portable CLI dev setup.

## Setup

```bash
git clone https://github.com/2kabhishek/termux2k
cd termux2k

# Menu based interactive setup
./setup.sh

# Setup everythin unattended
./setup.sh -a
```

## Requirements

For installation `git` `curl` & `zsh` are must, other tools are mentioned below.

### Packages

This list is incomplete, package names may vary depending upon your system and your requirements.

```bash
# Required
git, zsh, neovim, tmux, git-delta, bat, fd, fzf, fasd, ag(silver_surfer), curl, powerline, lsd
# Optional
ranger, cmus, htop, python, vim, broot, bash, ncdu, grc, exa, xplr
```

Powerline patched fonts are required for glyphs. I'll recommend [Nerd Fonts](https://www.nerdfonts.com/). I'm using FiraCode.

### Included Configurations

This repo contains configurations for following tools.

-   bash : [~/.bashrc](https://github.com/2KAbhishek/Dotfiles/blob/main/.bashrc)
-   bat : [~/.config/bat/](https://github.com/2KAbhishek/Dotfiles/blob/main/.config/bat/)
-   broot : [~/.config/broot/](https://github.com/2KAbhishek/Dotfiles/blob/main/.config/broot/)
-   cmus : [~/.config/cmus/](https://github.com/2KAbhishek/Dotfiles/blob/main/.config/cmus/)
-   git : [~/.gitconfig](https://github.com/2KAbhishek/Dotfiles/blob/main/.gitconfig)
-   htop : [~/.config/htop/](https://github.com/2KAbhishek/Dotfiles/blob/main/.config/htop/)
-   neovim : [~/.config/nvim/](https://github.com/2KAbhishek/Dotfiles/blob/main/.config/nvim/)
-   python : [~/.pystartup](https://github.com/2KAbhishek/Dotfiles/blob/main/.pystartup)
-   ranger : [~/.config/ranger/](https://github.com/2KAbhishek/Dotfiles/blob/main/.config/ranger/)
-   tmux : [~/.tmux.conf](https://github.com/2KAbhishek/Dotfiles/blob/main/.tmux.conf)
-   vim : [~/.vimrc](https://github.com/2KAbhishek/Dotfiles/blob/main/.vimrc)
-   zsh : [~/.zshrc](https://github.com/2KAbhishek/Dotfiles/blob/main/.zshrc)

## How it was built

termux2k was built using bits and pieces from my [Dotfiles](https://github.com/2kabhishek/Dotfiles), repurposed and tweaked to fit this use case

## Challenges faced

Finding workarounds for a few things on `termux` was a bit challenging.

## What I learned

I learned about writing good cross-platform bash scripts and learned a lot about making flexible configs and making them as easy to setup as possible.

## What's next

Planning to add more tools, better management, always updating.

Hit the ⭐ button if you found this useful.

## More Info

Want the complete CLI experience on your workstation too? Have a look at [dots2k](https://github.com/2kabhishek/dots2k)

Looking for my `neovim` configs? See [nvim2k](https://github.com/2kabhishek/nvim2k)

Looking for my `tmux` configs? See [tmux2k](https://github.com/2kabhishek/tmux2k)

Find more cool configs and setups at [GitHub does Dotfiles](https://dotfiles.github.io/)

<div align="center">

<a href="https://github.com/2KAbhishek/termux2k">Source</a> |
<a href="https://2kabhishek.github.io/termux2k">Website</a>

</div>
