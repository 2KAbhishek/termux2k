<div align = "center">

<h1><a href="https://2kabhishek.github.io/Oh-My-Termux">Oh-My-Termux</a></h1>

<a href="https://github.com/2KAbhishek/Oh-My-Termux/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/2kabhishek/Oh-My-Termux?style=flat&color=eee&label="> </a>

<a href="https://github.com/2KAbhishek/Oh-My-Termux/graphs/contributors">
<img alt="People" src="https://img.shields.io/github/contributors/2kabhishek/Oh-My-Termux?style=flat&color=ffaaf2&label=People"> </a>

<a href="https://github.com/2KAbhishek/Oh-My-Termux/stargazers">
<img alt="Stars" src="https://img.shields.io/github/stars/2kabhishek/Oh-My-Termux?style=flat&color=98c379&label=Stars"></a>

<a href="https://github.com/2KAbhishek/Oh-My-Termux/network/members">
<img alt="Forks" src="https://img.shields.io/github/forks/2kabhishek/Oh-My-Termux?style=flat&color=66a8e0&label=Forks"> </a>

<a href="https://github.com/2KAbhishek/Oh-My-Termux/watchers">
<img alt="Watches" src="https://img.shields.io/github/watchers/2kabhishek/Oh-My-Termux?style=flat&color=f5d08b&label=Watches"> </a>

<a href="https://github.com/2KAbhishek/Oh-My-Termux/pulse">
<img alt="Last Updated" src="https://img.shields.io/github/last-commit/2kabhishek/Oh-My-Termux?style=flat&color=e06c75&label="> </a>

<h3>Dev CLI setup, in the palm of your hands ✋📱</h3>

<figure>
  <img src="https://raw.githubusercontent.com/2KAbhishek/Oh-My-Termux/master/images/screenshot.jpg" alt="Oh-My-Termux Demo" style="width:100%">
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
git clone https://github.com/2kabhishek/Oh-My-Termux
cd Oh-My-Termux

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

- bash : [~/.bashrc](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.bashrc)
- bat : [~/.config/bat/](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.config/bat/)
- broot : [~/.config/broot/](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.config/broot/)
- cmus : [~/.config/cmus/](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.config/cmus/)
- git : [~/.gitconfig](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.gitconfig)
- htop : [~/.config/htop/](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.config/htop/)
- neovim : [~/.config/nvim/](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.config/nvim/)
- python : [~/.pystartup](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.pystartup)
- ranger : [~/.config/ranger/](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.config/ranger/)
- tmux : [~/.tmux.conf](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.tmux.conf)
- vim : [~/.vimrc](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.vimrc)
- zsh : [~/.zshrc](https://github.com/2KAbhishek/Oh-My-Termux/blob/main/.zshrc)

## How it was built

Oh-My-Termux was built using bits and pieces from my [Dotfiles](https://github.com/2kabhishek/Dotfiles), repurposed and tweaked to fit this use case

## Challenges faced

Finding workarounds for a few things on `termux` was a bit challenging.

## What I learned

I learned about writing good cross-platform bash scripts and learned a lot about making flexible configs and making them as easy to setup as possible.

## What's next

Planning to add more tools, better management, always updating.

Hit the ⭐ button if you found this useful.

## More Info

Want the complete CLI experience on your nix system too? Have a look at [Dotfiles](https://github.com/2kabhishek/Dotfiles)

Looking for my `neovim` configs? See [nvim](https://github.com/2kabhishek/nvim)

Looking for my `tmux` configs? See [tmux2k](https://github.com/2kabhishek/tmux2k)

Find more cool configs and setups at [GitHub does Dotfiles](https://dotfiles.github.io/)

<div align="center">

<a href="https://github.com/2KAbhishek/Oh-My-Termux">Source</a> |
<a href="https://2kabhishek.github.io/Oh-My-Termux">Website</a>

</div>
