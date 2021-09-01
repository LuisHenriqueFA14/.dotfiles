set splitright
set splitbelow

set autoindent " New lines inherit the indentation of previous lines.
set noshowmode " Hide default status bar
set shiftround " When shifting lines, round the indentation to the nearest multiple of shiftwidth.
set smarttab " Insert tabstop number of spaces when the tab key is pressed.
set shiftwidth=4 " When shifting, indent using two spaces.
set tabstop=4 " Insert using 4 spaces.
set softtabstop=0 noexpandtab " Don't convert tabs to spaces.
filetype plugin indent on " Enable indentation rules that are file-type specific.

" SEARCH OPTIONS//

set hlsearch " Enable search highlighting.
set ignorecase " Ignore case when searching.
set incsearch " Incremental search that shows partial matches.
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter.

" PERFORMANCE OPTIONS//

set complete-=i " Limit the files searched for auto-completes.
set lazyredraw " Don't update screen during macro and script execution.

 " TEXT RENDERING OPTIONS//

"set laststatus=2
set display+=lastline " Always try to show a paragraph's last line.
set encoding=utf-8 " Use an encoding that support unicode.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=8 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to left and right of the cursor.
set wrap " Enable line wrapping.
set nocompatible " Disable compatible for plugin compatible.

syntax on " Enable syntax into plugins.
syntax enable " Enable syntax highlighting.

" USER INTERFACE OPTIONS//

set colorcolumn=120 " Shows a column
set ruler " Always show cursor position.
set cursorline " Highlight the line currently under cursor.
set number " Show line numbers on the slidebar.
set relativenumber " Set line number to relative
set numberwidth=2 " Number border size
set wildmenu " Display command line's tab complete options as a menu.
set showmatch " Can reduce the need for %, the cursor will briefly jump to the matching brace when you insert one.
set clipboard=unnamedplus " Enable copies of files outside of vim.
set hidden " TextEdit might fail if hidden is not set.
set updatetime=100 " Change the time of update

" Fold
function! MyFoldText()
    "let line = getline(v:foldstart)
    let foldedlinecount = v:foldend - v:foldstart + 1
    return ' ⭐️ '. foldedlinecount." lines folded "
endfunction
set foldtext=MyFoldText()
set foldmethod=indent
set foldlevel=999999999
" / Fold

set shortmess-=S

set cmdheight=1 " Remove under line

autocmd FileType * set noexpandtab

autocmd FileType * :set showtabline=0
