syntax on
set ruler
set number
set relativenumber
colorscheme custom-theme

" PLUGIN SECTION
call plug#begin('~/.local/share/nvim/plugged')

Plug ('scrooloose/nerdtree')

Plug ('vim-airline/vim-airline')

Plug ('vim-airline/vim-airline-themes')

Plug ('airblade/vim-gitgutter')

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme = "base16_chalk"
