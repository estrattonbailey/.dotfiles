set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF
require('flash').setup({
  search = {
    mode = 'fuzzy'
  },
  modes = {
    search = {
      enabled = true
    }
  }
})
EOF
