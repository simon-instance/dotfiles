inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : ""
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : ""

nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" undo break points
inoremap ( (<c-g>u
inoremap { {<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap , ,<c-g>u

" moving lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>k <esc>:m .-2<CR>==
nnoremap <leader>j <esc>:m .+1<CR>==

let NERDTreeMinimalUI=1
let mapleader = ","

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

noremap <leader>e :NERDTreeToggle<CR>

" move among buffers with CTRL
nnoremap <C-l> :tabn<CR>
nnoremap <C-h> :tabp<CR>
nnoremap <leader>tnew :tabnew 
nnoremap <leader>tg :tabn 
nnoremap <leader>tm :tabm 

" open new tab in vsplit mode
nnoremap <leader>vs :vsplit 

" quit terminal
tnoremap <C-c> <C-\><C-n><CR>
tnoremap <ESC> <C-\><C-n>:q!<CR>

nnoremap <leader>.= :res +5<CR>
nnoremap <leader>.- :res -5<CR>
" prevent multiple leader presses (not needed)
nnoremap <leader>= :vertical res +5<CR>:call feedkeys('<leader>')<CR>
nnoremap <leader>- :vertical res -5<CR>:call feedkeys('<leader>')<CR>

nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

inoremap <silent><expr> <c-space> coc#refresh()
