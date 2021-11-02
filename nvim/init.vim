set nocompatible
set hidden

" Setting the leader key
let g:mapleader = ' '

set termguicolors " Comment to dracula gray background

call plug#begin(stdpath('config') . '/autoload/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}                                                             " Auto completion
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                                                              " Extra syntax and highlight for nerdtree files
	Plug 'ap/vim-css-color'                                                                                     " Show colors on HEX or RGB
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}   " Markdown preview
	Plug 'gruvbox-community/gruvbox'                                                                            " Gruvbox theme
	Plug 'vim-airline/vim-airline'                                                                              " Bottom line with info
	Plug 'vim-airline/vim-airline-themes'                                                                       " Themes for vim-airline
	Plug 'preservim/nerdtree'                                                                                   " Show files on the current path
	Plug 'kyazdani42/nvim-web-devicons'                                                                         " Leave devicons
	Plug 'ryanoasis/vim-devicons'                                                                               " Vim devicons
	Plug 'preservim/nerdcommenter'                                                                              " Comment on leader-/
	Plug 'Xuyuanp/nerdtree-git-plugin'                                                                          " Show git status on nerdtree
	Plug 'tpope/vim-fugitive'                                                                                   " Git mode for vim
	Plug 'mg979/vim-visual-multi'                                                                               " Multi-cursor mode for vim
	Plug 'airblade/vim-rooter'                                                                                  " Rootify the main path
	Plug 'Raimondi/delimitMate'                                                                                 " Auto close brackets
	Plug 'tyrannicaltoucan/vim-deep-space'                                                                      " Deep-space theme
	Plug 'nvim-lua/popup.nvim'                                                                                  " Popup vim plugin (r: telescope.nvim)
	Plug 'nvim-lua/plenary.nvim'                                                                                " All lua necessaries (r: telescope.nvim)
	Plug 'nvim-telescope/telescope.nvim'                                                                        " Fuzzy finder on vim
	Plug 'sbdchd/neoformat'                                                                                     " Prettier/Beautify
	Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}                                             " Live-Server
	Plug 'nvim-treesitter/nvim-treesitter'                                                                      " Better highlights
	Plug 'nvim-treesitter/playground'                                                                           " Shows everything to a good refactoring
	Plug 'AndrewRadev/tagalong.vim'                                                                             " Auto change HTML tag
	Plug 'ThePrimeagen/vim-be-good'                                                                             " Vim-be-good game for train
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                                         " Fzf
	Plug 'junegunn/fzf.vim'                                                                                     " Vim fzf
	Plug '/home/luis/Documentos/Programacao/Projetos/your-first-vim-plugin'                                     " My plugin =)
	Plug 'PhilRunninger/nerdtree-visual-selection'                                                              " Visual mode on nerdtree
	Plug 'ThePrimeagen/refactoring.nvim'                                                                        " Refactoring tools
	Plug 'dstein64/vim-startuptime'                                                                             " Calculate startup time
	Plug 'jessfraz/openai.vim'                                                                                  " OpenAI vim plugin
	Plug 'tom-doerr/vim_codex'                                                                                  " Vim codex plugin
	Plug 'junegunn/goyo.vim'                                                                                    " Zen mode
	Plug 'lukas-reineke/indent-blankline.nvim'                                                                  " Indent line
	Plug 'vifm/vifm.vim'                                                                                        " Vifm
	Plug 'drzel/vim-gui-zoom'                                                                                   " GUI Zoom
	Plug 'andweeb/presence.nvim'                                                                                " Discord rich presence
	Plug 'github/copilot.vim'                                                                                   " Github copilot =D
call plug#end()

set encoding=UTF-8

source $HOME/.config/nvim/plugins-config/coc.vim
source $HOME/.config/nvim/plugins-config/vim-airline.vim
source $HOME/.config/nvim/plugins-config/nerdtree.vim
source $HOME/.config/nvim/plugins-config/indentline.vim
source $HOME/.config/nvim/plugins-config/commenter.vim
source $HOME/.config/nvim/plugins-config/deep-space.vim
source $HOME/.config/nvim/plugins-config/gruvbox.vim
source $HOME/.config/nvim/plugins-config/telescope.vim
source $HOME/.config/nvim/plugins-config/nvim-treesitter.vim
source $HOME/.config/nvim/plugins-config/fzf.vim
source $HOME/.config/nvim/plugins-config/netwr.vim
source $HOME/.config/nvim/plugins-config/goyo.vim
source $HOME/.config/nvim/plugins-config/coc-personal.vim
source $HOME/.config/nvim/plugins-config/venn.vim
source $HOME/.config/nvim/plugins-config/neovide.vim

luafile $HOME/.config/nvim/lua/plugins/nvim-tree.lua
luafile $HOME/.config/nvim/lua/plugins/refactoring.lua
luafile $HOME/.config/nvim/lua/plugins/indent_blankline.lua
luafile $HOME/.config/nvim/lua/plugins/telescope.lua

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keys.vim
source $HOME/.config/nvim/general/commands.vim

set omnifunc=syntaxcomplete#Complete

autocmd VimEnter *
      \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|  PlugInstall --sync | q
      \|endif

hi Comment gui=italic ctermfg=11 guifg=grey50 " Italic comments
