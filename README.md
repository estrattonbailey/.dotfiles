# Dotfiles
Configs for vim, git, tmux and Alacritty.

## Install
1. Clone this repo to a directory in your root.
```bash
git clone git@github.com:estrattonbailey/.dotfiles.git ~/.dotfiles
```

2. Install or update vim. Autocompletion requires that it be installed with Lua, and that's optional of course.
```bash
brew install vim --with-lua
brew upgrade vim
```

3. Install Alacritty
```
# clone and init
git clone https://github.com/jwilm/alacritty.git
cd alacritty
rustup override set stable
rustup update stable

# compile rust
cargo build --release

# package for applications
make app

# copy to applications folder
cp -r target/release/osx/Alacritty.app /Applications/
```

3. Create symlinks:
```bash
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
# remove the installed config and symlink this one
rm ~/.config/alacritty/alacritty.yml && ln -s ~/.dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
```

4. Install Vim Plug:
For more info, check out [the repo](https://github.com/junegunn/vim-plug), otherwise just use the CURL below.
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

5. Install plugins:
```bash
vim +PlugInstall +qa
```

**5.1** For Tern, you'll need to `cd` into `~/.dotfiles/vim/plugged/tern_for_vim` and run `npm install` for that to run.
**5.1** For ack, you'll need to `brew install ack`.

6. Use it:
```bash
vim <filename>
```

## Usage
- `,` - LEADER 
- `h` - move left
- `j` - move down
- `k` - move up
- `l` - move right
- `i` - enter insert mode
- `a` - move to next character and enter insert mode
- `A` - go to end of line in insert mode
- `v` - enter visual selection mode
- `V` - select whole line 
- `e` - go to end of next word
- `b` - go to beginning of last word
- `$` - go to end of line
- `0` - go to beginning of line
- `o` - add line above
- `O` - add line below
- `H` - go to top of window
- `L` - go to bottom of window
- `Ctrl+d` - move down by half a window
- `Ctrl+u` - move up by half a window
- `y` - copy to system clipboard
- `p` - paste from system clipboard
- `u` - undo
- `Ctrl+r` - redo
- `dd` - delete whole line
- `x` - delete character under cursor
- `r` - replace character under cursor i.e. press `r` then press the char you want to insert
- `viw` - with cursor over word, select the entire word in visual mode
- `vit` - with cursor over tag, select the contents of the tag in visual mode
- `diw` - with cursor over word, select and delete the entire word
- `dit` - with cursor over tag, select and delete the contents of the tag
- `ciw` - with cursor over word, select and delete the entire word, then enter insert mode
- `cit` - with cursor over tag, select and delete the contents of the tag, then enter insert mode
- `gc` - comment out multiple lines, with multiple lines selected in visual mode
- `gcc` - comment out single line from normal mode
- `/` - begin search
- `//` - clear last search

## tmux
Notable changes:
- uses `C-a` as prefix
- uses pane splitting shortcuts similar to vim
*See `tmux.conf` for these, there's only a few overrides.*

MIT License
