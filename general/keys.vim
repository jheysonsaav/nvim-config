let mapleader = " "

nmap <silent> <leader>b :NERDTree<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>p :Prettier<CR>

nmap <silent> <leader>/ <leader>cc<CR>

nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-right> :wincmd l<CR>
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-down> :wincmd j<CR>

nnoremap <silent> <C-[> :bprevious<CR>
nnoremap <silent> <C-]> :bnext<CR>


" Markdown preview keyboard maps
nmap <silent> <F8> <Plug>MarkdownPreview
nmap <silent> <F9> <Plug>StopMarkdownPreview
