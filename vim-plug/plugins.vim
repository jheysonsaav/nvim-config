call plug#begin('~/.config/nvim/plugged')

" theme
Plug 'joshdick/onedark.vim'
" syntasix suport
Plug 'sheerun/vim-polyglot'
" view css colors
Plug 'ap/vim-css-color'
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" intelligense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" file explorer
Plug 'preservim/nerdtree'
" prettier
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
" javascrit & typescript
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
" autopairs
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
" preview markdown
Plug 'iamcco/markdown-preview.vim'
" icons
Plug 'ryanoasis/vim-devicons'
" Autoclose tags
Plug 'alvan/vim-closetag'
" Git integration
Plug 'mhinz/vim-signify'

call plug#end()

