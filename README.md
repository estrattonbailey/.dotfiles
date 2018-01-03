# Dotfiles
Configs for vim, git, and [Hyper](https://hyper.is/). Almost all of these settings were borrowed from [@colepeters](https://github.com/colepeters), [@mrmrs](https://github.com/mrmrs), and based on Cole's comments, the [YADR](https://github.com/skwp/dotfiles) dotfiles library.

I also recommend a matching terminal theme [like this one](https://github.com/nathanbuchar/atom-one-dark-terminal).

## Install
1. Clone this repo to a directory in your root.
```bash
git clone git@github.com:estrattonbailey/.dotfiles.git ~/.dotfiles
```

2. Install or update vim. Autocompletion requires that it be installed with Lua.
```bash
brew install vim --with-lua
brew upgrade vim
```

3. Create symlinks:
```bash
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/hyper.js ~/.hyper.js
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

## Spacemacs
Giving this a try.
```bash
brew upgrade
brew install emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

Then run `emacs` in terminal to start the setup. I've configured `evil`, `ivy` and `spacemacs` defaults.

You'll want to follow the javascript install [instructions](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/javascript#install).

Full [docs](http://spacemacs.org/doc/DOCUMENTATION.html).

MIT License
