let mapleader = ','

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Moving windows
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>

nnoremap <leader>= :vertical res +5<CR>:call feedkeys('<leader>')<CR>
nnoremap <leader>- :vertical res -5<CR>:call feedkeys('<leader>')<CR>

" Visual mode moving lines
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
nnoremap <c-j> :m .+1<cr>==
nnoremap <c-k> :m .-2<cr>==

" Behave vim
nnoremap Y y$

" Keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap ( (<c-g>u
inoremap ) )<c-g>u
inoremap { {<c-g>u
inoremap } }<c-g>u
inoremap -> -><c-g>u

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Suggestion box controls
inoremap <expr> <tab> pumvisible() ? '\<c-n>' : '\<tab>'
inoremap <expr> <s-tab> pumvisible() ? '\<c-p>' : '\<s-tab>'
inoremap <expr> <cr> pumvisible() ? '\<c-y>' : '\<c-g>u\<cr>'
