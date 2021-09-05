call plug#begin('~/.vim/plugged')
    " Fuzzy finder
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Color scheme
    Plug 'gruvbox-community/gruvbox'

    " Code formatting for typescript and javascript
     Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact'] }

     " Coc vim for typescript and emmet
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
hi Normal guibg=none
