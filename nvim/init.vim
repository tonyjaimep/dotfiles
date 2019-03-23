syntax on
set ruler
set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
" disable annoying beeps
set visualbell
" disable search highlighting
set nohlsearch
" don't do anything when pressing F1
nmap <F1> <nop>
" move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

tnoremap <Esc> <C-\><C-n>

" show highlighting groups
" (useful for creating a color theme)
nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" more natural splitting
set splitbelow
set splitright

" custom colorscheme I made ;)
colo custom-theme

" plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug ('vim-airline/vim-airline')
Plug ('vim-airline/vim-airline-themes')

Plug ('airblade/vim-gitgutter')

Plug ('mattn/emmet-vim')

Plug ('jiangmiao/auto-pairs')

Plug ('lumiliet/vim-twig')
Plug ('jwalton512/vim-blade')
Plug ('posva/vim-vue')
Plug ('octol/vim-cpp-enhanced-highlight')
Plug ('StanAngeloff/php.vim')

Plug ('Valloric/YouCompleteMe')
Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}

Plug ('scrooloose/nerdtree')
Plug ('jistr/vim-nerdtree-tabs')

Plug ('isRuslan/vim-es6')

call plug#end()

let g:nerdtree_tabs_open_on_console_startup = 2
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = "/home/anon/.dotfiles/.ycm_extra_conf.py"
let g:ycm_rust_src_path = "/home/anon/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src"

let g:airline_theme='minimalist'

" set smaller tab sizes for documents with more tabs
autocmd FileType html,php,html.twig setlocal shiftwidth=2 tabstop=2

" python
autocmd FileType python setlocal expandtab

" show column
set cc=80
autocmd FileType html,php,html.twig set cc=0
