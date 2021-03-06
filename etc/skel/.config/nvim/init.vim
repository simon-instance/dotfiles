hi clear SignColumn
hi Error guifg=Red guibg=White
hi CocErrorFloat guifg=#44cc44 guibg=#000000
hi CocWarningFloat guifg=#44cc44 guibg=#000000
hi CocHintFloat guifg=#44cc44 guibg=#000000
hi CocInfoFloat guifg=#44cc44 guibg=#000000
hi clear cursorline

set number
set relativenumber
set encoding=UTF-8
set guifont=Hack\ Regular\ Nerd\ Font\ Complete\ Mono\ 11
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

let mapleader = "\<Space>"
let NERDTreeMinimalUI=1

map <C-b> :NERDTreeToggle<CR>
nmap <C-p> :GFiles<CR>

" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
" quit terminal
tnoremap <C-c> <C-\><C-n><CR>
tnoremap <ESC> <C-\><C-n>:q!<CR>
" open terminal
nnoremap <silent> <Leader>= :exe "res +" . (winheight(0) * 2/8)<CR>
nnoremap <silent> <Leader>- :exe "res -" . (winheight(0) * 2/8)<CR>
nnoremap <silent> <Leader>v= :exe "vertical res +" . (winwidth(0) * 2/6)<CR>
nnoremap <silent> <Leader>v- :exe "vertical res -" . (winwidth(0) * 2/6)<CR>

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"
inoremap <C-p> pumvisible() ? "k" : <C-p>
inoremap <C-n> pumvisible() ? <down> : <C-n>

source /home/simon/.config/nvim/my-plugins/index.vim
