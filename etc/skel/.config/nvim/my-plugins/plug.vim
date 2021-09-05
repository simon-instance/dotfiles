function! InitializeCoc()
  call coc#util#install()
  call coc#util#install_extensions([
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-snippets',
  \ 'coc-emmet',
  \ ])
endfunction

call plug#begin()
  Plug 'neoclide/coc.nvim', {'do': { -> InitializeCoc() } ,'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
    Plug 'git@github.com:kien/ctrlp.vim.git'

	" REQUIRED: Add a syntax file. YATS is the best
	Plug 'HerringtonDarkholme/yats.vim'
call plug#end()

" Plugin settings
if executable('rg')
    let g:rg_derive_root='true'
endif

if isdirectory('.git')
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

let g:ctrlp_cmd = 'CtrlP $PWD'
let g:netrw_browse_split = 2
let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25
