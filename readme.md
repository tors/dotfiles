# Dotfiles
> vim + tmux is life

![Screenshot](/ss.png)

Extra-lightweight dotfile (vim, tmux, bash) setup with emphasis on Node, Javascript, Go development

## Setup

Requirements:
- vim
- tmux
- [vim-plug](https://github.com/junegunn/vim-plug)

```
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cat bash_profile >> ~/.bash_profile
```

## Vim plugins

- scrooloose/nerdtree
- fatih/vim-go
- ctrlpvim/ctrlp.vim
- sbdchd/neoformat
- tpope/vim-fugitive
- itchyny/lightline.vim
- chriskempson/base16-vim
- itmammoth/doorboy.vim
- tpope/vim-commentary
- mattn/emmet-vim
- chemzqm/vim-jsx-improve
- tomlion/vim-solidity
- nightsense/seabird

To install all these, just:

```
:PlugInstall
```

from vim.

## Colorscheme

[seabird](https://github.com/nightsense/seabird) is a theme based on hue 204.

## Tmux

[tpm](https://github.com/tmux-plugins/tpm) manages tmux plugin(s)

- tmux-plugins/tmux-yank

### Yanking from tmux in MacOS
- [ChrisJohnsen/tmux-MacOSX-pasteboard](github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
