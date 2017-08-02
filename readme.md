# Dotfiles
> vim + tmux is life

Extra-lightweight dotfile (vim, tmux, bash) setup with emphasis on Node, Javascript, Go development

## Setup

```
mv vimrc ~/.vimrc
mv tmux.conf ~/.tmux.conf
mv bash_profile ~/.bash_profile
```

## VIM

I use [vim-plug](https://github.com/junegunn/vim-plug) to manage vim plugins.

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

To install all these, just:

```
:PlugInstall
```

from vim.

## Tmux

I use [tpm](https://github.com/tmux-plugins/tpm) to manage tmux plugin(s)

- tmux-plugins/tmux-yank

See also:
- [ChrisJohnsen/tmux-MacOSX-pasteboard](github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
