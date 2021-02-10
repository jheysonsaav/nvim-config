" set leader key
let mapleader = " "

" NERDTree
nmap <silent> <leader>b :NERDTree<CR>

" Custom commands for write and quit
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>qq :q!<CR>
nmap <leader>ww :w!<CR>

nmap <leader>p :Prettier<CR>

nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-right> :wincmd l<CR>
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-down> :wincmd j<CR>

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Buffers
nnoremap <silent> <A-left> :bnext<CR>
nnoremap <silent> <A-right> :bprevious<CR>
nnoremap <silent> <A-q> :bdelete<CR>

" Open terminal
set splitbelow
nnoremap <C-t> :call OpenTerminal()<CR>

" GoTo for vim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
