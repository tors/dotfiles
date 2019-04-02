# Dotfiles
> vim + tmux is life

![Screenshot](/ss.png)

Extra-lightweight dotfile (vim, tmux, bash) setup for Node, Javascript, Typescript, and Go development

## Setup

Requirements:
- vim
- tmux
- [vim-plug](https://github.com/junegunn/vim-plug)

```sh
# Backup your default configs if they exist
cp ~/.vimrc ~/.vimrc_bkp
cp ~/.tmux.conf ~/.tmux.conf_bkp

cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cat bash_profile >> ~/.bash_profile
```

In vim:

```sh
:PlugInstall
```

## Tmux

[tpm](https://github.com/tmux-plugins/tpm) manages tmux plugin(s)

- tmux-plugins/tmux-yank

### Yanking from tmux in MacOS
- [ChrisJohnsen/tmux-MacOSX-pasteboard](github.com/ChrisJohnsen/tmux-MacOSX-pasteboard)
