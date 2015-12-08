call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Shougo/vimfiler.vim'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'FelikZ/ctrlp-py-matcher'  
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax' 
Plug 'amirh/HTML-AutoCloseTag'
Plug 'gorodinskiy/vim-coloresque'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'davidhalter/jedi-vim'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'wakatime/vim-wakatime'
Plug 'tacahiroy/ctrlp-funky'  
Plug 'tomtom/tcomment_vim' 
Plug 'tomtom/tlib_vim'
Plug 'taglist.vim' 
Plug 'tmhedberg/matchit' 
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'yegappan/mru' 
Plug 'Raimondi/delimitMate' 
Plug 'rstacruz/sparkup' 
Plug 'Wombat'
Plug 'itchyny/landscape.vim'
Plug 'jakobwesthoff/whitespacetrail'
Plug 'edkolev/tmuxline.vim' 

call plug#end()

colorscheme darkblue
command! H let @/=""

syntax on
syntax enable

set number
set ruler
set nowrap      
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set expandtab
set backspace=indent,eol,start 
set fileencoding=utf-8
set fileencodings=utf-8
set encoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set bomb
set binary
set ttyfast
set nocompatible 
set nobackup
set noswapfile
set showcmd    
set wildmenu
set noswapfile
set mouse=a
set t_Co=256
set term=screen-256color
let g:solarized_termcolors=256 

highlight Search cterm=underline

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
let mapleader=","

" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4 smartindent
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 25
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
noremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>

" vim-airline
let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" ctrlp.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set tags=./tags,./gems.tags;
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<leader>e'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_extensions = ['tag']
let Tlist_Show_One_File = 1 " Taglist to show only 1 file tags
let Tlist_Use_Right_Window = 1 " Taglist to show on the right sidebar
if executable('ag')
  " use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_working_path_mode = ''

"set ignore folders while calling ctrlp
set wildignore+=*/vendor/**
set wildignore+=*/node_modules/**

" funky ctrlp
let g:ctrlp_funky_sort_by_mru = 1
let g:ctrlp_use_caching = 0

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers=['python', 'flake8']
let g:syntastic_python_flake8_post_args='--ignore=W391'
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:javascript_enable_domhtmlcss = 1

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"

" abbreviations
abbrev pft PHPUnit_Framework_TestCase

abbrev gm !php artisan generate:model
abbrev gc !php artisan generate:controller
abbrev gmig !php artisan generate:migration

" snipmate
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases.php = 'php,laravel'

" enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" autocommands
if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC " source .vimrc file after saving it
  " Open markdown files with Chrome.
  autocmd BufEnter *.md exe 'nnoremap <leader>p :!chromium %:p<CR>'
endif

autocmd CursorHold * set nohlsearch
autocmd CursorMoved * set hlsearch

map tt gt<CR>
map <C-f> :MRU<Enter>
map! jj <Esc>
map <Space> :
map <C-d> gcc
map <leader>d gcip<CR>

" Laravel framework commons
nmap <leader>lr :e app/routes.php<CR>
nmap <leader>lca :e app/config/app.php<CR>
nmap <leader>lcd :e app/config/database.php<CR>
nmap <leader>lc :e composer.json<CR>

" toggle taglist
nnoremap <leader>t :TlistToggle<CR>

" prepare a new php class
function! Class()
    let name = input('Class name? ')
    let namespace = input('Any Namespace? ')


    if strlen(namespace)
        exec 'normal I<?php namespace ' . namespace . ';'
    else
        exec 'normal I<?php'
    endif

    " Open class
    exec 'normal Iclass ' . name

    exec 'normal Ipublic function __construct() {}'
endfunction    
nmap ,1 :call Class()<CR>
