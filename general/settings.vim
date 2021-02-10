" basic Config set
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set noshowmode
set rnu
set hidden
set cursorline
set noswapfile
set nobackup
set nowb
filetype indent on
filetype plugin on
syntax enable

" Función para abrir el terminal
function! OpenTerminal()
  let buf_num = bufnr('%')
  let buf_type = getbufvar(buf_num, '&buftype', 'not found')

  if buf_type == 'terminal'
    execute 'q'
  else
    let terminal_height = winheight(0) / 4

    execute terminal_height"sp term://zsh"

    execute "set nonu"
    execute "set nornu"
    execute "set nocursorline"

    execute "set signcolumn=no"

    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    execute "tnoremap <buffer> <C-w><Up> <C-\\><C-n><C-w><C-k>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-n> <C-\\><C-n>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    execute "setlocal nobuflisted"

    startinsert!
  endif
endfunction

" Cerrar terminal inmediatamente (sin mostrar código de salida)
augroup terminal_settings
  autocmd!

  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert

  autocmd TermClose term://*
    \ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
    \   call nvim_input('<CR>') |
    \ endif
augroup END
