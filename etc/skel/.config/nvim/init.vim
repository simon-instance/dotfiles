let prefix='$HOME/.config/nvim/'

let sourceSetters = 'source ' . prefix . 'setters.vim'
let sourceMappings = 'source ' . prefix . 'mappings.vim'

execute sourceSetters
execute sourceMappings

source /home/simon/.config/nvim/my-plugins/index.vim

" Intellisense for .tsx files
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
