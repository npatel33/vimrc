"
"Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" better syntax highlighting'
Plug 'justinmk/vim-syntax-extra'

" comment pluging
Plug 'tpope/vim-commentary'

" Nerdtree file explorer
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

"---------------YCM related settings
"turn off preview
set completeopt-=preview

"shows line number
set number

"show current line
set cursorline

"indentation
set cindent
set autoindent

set expandtab
set shiftwidth=4
set softtabstop=4

" C function parameter indentation setting
set cino+=(0

"map jk to ESC
imap jk <Esc>

"map ctrl+n to Nerdtreetoggle
map tt :NERDTreeToggle<CR>
