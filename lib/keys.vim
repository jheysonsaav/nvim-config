" Set the leader key
let mapleader = " "

" Keys for write an quit neovim commands 
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>qq :q!<CR>
nnoremap <leader>ww :w!<CR>

" Movements between windows
nnoremap <silent> <C-left> :wincmd h<CR>
nnoremap <silent> <C-right> :wincmd l<CR>
nnoremap <silent> <C-up> :wincmd k<CR>
nnoremap <silent> <C-down> :wincmd j<CR>

" GoTo code navigation.
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

" Coc explorer keys
nnoremap <leader>e :CocCommand explorer<CR>
