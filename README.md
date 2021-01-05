# Dotfiles
Configs for vim, git, tmux and Alacritty.

## Install
1. Clone this repo to a directory in your root.
```bash
git clone git@github.com:estrattonbailey/.dotfiles.git ~/.dotfiles
```

2. Install or update vim. I use homebrew.

3. Install Alacritty

3. Create symlinks:

```bash
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global

# pick one
ln -s ~/.dotfiles/bashrc ~/.bashrc # might need to delete or copy the old one
ln -s ~/.dotfiles/zshrc ~/.zshrc # might need to delete or copy the old one

# if bash
ln -s ~/.dotfiles/bashrc ~/.bashrc # might need to delete or copy the old one
ln -s ~/.dotfiles/bash_profile ~/.bash_profile # might need to delete or copy the old one

# remove the installed config and symlink this one
ln -s ~/.dotfiles/alacritty.yml ~/.alacritty.yml

ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/coc-settings.json ~/.vim/coc-settings.json
```

4. Install [Vim Plug](https://github.com/junegunn/vim-plug)

5. Install plugins:
```bash
vim +PlugInstall +qa
```

6. Use it:
```bash
vim <filename>
```

## tmux
Notable changes:
- uses `C-a` as prefix
- uses pane splitting shortcuts similar to vim
*See `tmux.conf` for these, there's only a few overrides.*
