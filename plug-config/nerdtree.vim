let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['^.git$']

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Autorefresh on tree focus
 function! NERDTreeRefresh()
     if &filetype == "nerdtree"
             silent exe substitute(mapcheck("R"), "<CR>", "", "")
    endif
  endfunction
let NERDTreeQuitOnOpen = 1

