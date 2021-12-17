# Dotfiles
> vim + tmux is life

![Screenshot](/ss.png)

Extra-lightweight dotfile (vim, tmux, zsh) setup for Node, Javascript, Typescript, and Go development

## Setup

Requirements:
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- vim
- tmux
- [tpm](https://github.com/tmux-plugins/tpm)
- [vim-plug](https://github.com/junegunn/vim-plug)

## Install

```
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

```sh
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp p10k.zsh ~/.p10k.zsh
```

## In vim

```sh
:PlugInstall
```

### Yanking from tmux in MacOS
- [ChrisJohnsen/tmux-MacOSX-pasteboard](github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
