# Dotfiles
Config files for Vim, Neovim, and git, copied from [Cole Peters'](https://twitter.com/cole_peters) lovely [repo](https://github.com/colepeters/dotfiles/tree/b25bb993c1baa491aa8cd7858962a80104bd39fe). I just took what I needed and left the rest :)

Note: Cole set up the `,` as the `<leader>`, and I generally like that as well so I kept it.

## Setup

1. Clone this repo:
```bash
git clone git@github.com:estrattonbailey/.dotfiles.git ~/.dotfiles
```

2. Install Neovim if you haven't already:
```bash
brew update # update homebrew if needed
brew install neovim/neovim/neovim
```

3. Symlink all the things:
```bash
ln -s ~/.dotfiles/config/nvim ~/.config/nvim
ln -s ~/.dotfiles/vimrc/ ~/.vimrc
ln -s ~/.dotfiles/config/nvim/init.vim/ ~/.nvimrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
```

4. Install plugins:
```bash
nvim +PlugInstall +qa
```

5. Use Neovim:
```bash
nvim <filename>
```

MIT License
