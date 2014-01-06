vimme
=====

my newest simple vim environment

## Install

```bash
git clone --recursive http://github.com/f/vimme.git ~/.vimme
ln -s ~/.vimme/.vimrc ~/.vimrc
ln -s ~/.vimme/.vim ~/.vim
vim +BundleInstall +qall # don't worry about colorscheme warning, go on
```

## Setting TMUX
```bash
ln -s ~/.vimme/.tmux.conf ~/.tmux.conf
ln -s ~/.vimme/.tmuxline.conf ~/.tmuxline.conf
```

## Setting ZSH
```bash
ln -s ~/.vimme/.zshrc ~/.zshrc
```
