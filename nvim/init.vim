set nocompatible
set hidden

" Setting the leader key
let g:mapleader = ';'

call plug#begin(stdpath('config') . '/autoload/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}                                                             " Auto completion
	Plug 'dracula/vim', { 'as': 'dracula' }                                                                     " Dracula theme
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                                                              " Extra syntax and highlight for nerdtree files
	Plug 'ap/vim-css-color'                                                                                     " Show colors on HEX or RGB
	Plug 'jbgutierrez/vim-better-comments'                                                                      " Different comments colors
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}   " Markdown preview
	Plug 'vim-scripts/vim-auto-save'                                                                            " Auto save mode for vim
	Plug 'gruvbox-community/gruvbox'                                                                            " Gruvbox theme
	Plug 'vim-airline/vim-airline'                                                                              " Bottom line with info
	Plug 'vim-airline/vim-airline-themes'                                                                       " Themes for vim-airline
	Plug 'preservim/nerdtree'                                                                                   " Show files on the current path
	Plug 'kyazdani42/nvim-web-devicons'                                                                         " Leave devicons
	Plug 'romgrk/barbar.nvim'                                                                                   " Tab line
	Plug 'ryanoasis/vim-devicons'                                                                               " Vim devicons
	Plug 'joshdick/onedark.vim'                                                                                 " Onedark theme
	Plug 'romgrk/doom-one.vim'                                                                                  " Doom-one theme
	Plug 'preservim/nerdcommenter'                                                                              " Comment on leader-/
	Plug 'Xuyuanp/nerdtree-git-plugin'                                                                          " Show git status on nerdtree
	Plug 'tpope/vim-fugitive'                                                                                   " Git mode for vim
	Plug 'mg979/vim-visual-multi'                                                                               " Multi-cursor mode for vim
	Plug 'junegunn/goyo.vim'                                                                                    " Zen mode for vim
	Plug 'junegunn/limelight.vim'                                                                               " Color just focused local code
	Plug 'airblade/vim-rooter'                                                                                  " Rootify the main path
	Plug 'google/vim-searchindex'                                                                               " Search in vim
	Plug 'matze/vim-move'                                                                                       " Move full lines
	Plug 'crusoexia/vim-monokai'                                                                                " Monokai theme
	Plug 'Raimondi/delimitMate'                                                                                 " Auto close brackets
	Plug 'wfxr/minimap.vim'                                                                                     " Show side-bar minimap
	Plug 'tyrannicaltoucan/vim-deep-space'                                                                      " Deep-space theme
	Plug 'akinsho/nvim-toggleterm.lua'                                                                          " Vim terminal integration
	Plug 'nvim-lua/popup.nvim'                                                                                  " Popup vim plugin (r: telescope.nvim)
	Plug 'nvim-lua/plenary.nvim'                                                                                " All lua necessaries (r: telescope.nvim)
	Plug 'nvim-telescope/telescope.nvim'                                                                        " Fuzzy finder on vim
	Plug 'sbdchd/neoformat'                                                                                     " Prettier/Beautify
	Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}                                             " Live-Server
	Plug 'glepnir/dashboard-nvim'                                                                               " Start pane
	Plug 'nvim-treesitter/nvim-treesitter'                                                                      " Better highlights
	Plug 'nvim-treesitter/playground'                                                                           " Shows everything to a good refactoring
	Plug 'AndrewRadev/tagalong.vim'                                                                             " Auto change HTML tag
	Plug 'ghifarit53/tokyonight-vim'                                                                            " Theme tokyo night
	Plug 'ThePrimeagen/vim-be-good'                                                                             " Vim-be-good game for train
	Plug 'AndrewRadev/tagalong.vim'                                                                             " Change HTML tags
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                                         " Fzf
	Plug 'junegunn/fzf.vim'                                                                                     " Vim fzf
	Plug 'devinceble/Tortoise-Typing'                                                                           " Train typing vim
	Plug '/home/luis/Documentos/Programacao/Projetos/your-first-vim-plugin'                                     " My plugin =)
	Plug 'PhilRunninger/nerdtree-visual-selection'                                                              " Visual mode on nerdtree
call plug#end()

set encoding=UTF-8

source $HOME/.config/nvim/plugins-config/coc.vim
source $HOME/.config/nvim/plugins-config/vim-airline.vim
source $HOME/.config/nvim/plugins-config/nerdtree.vim
source $HOME/.config/nvim/plugins-config/vim-auto-save.vim
source $HOME/.config/nvim/plugins-config/barbar.vim
source $HOME/.config/nvim/plugins-config/indentline.vim
source $HOME/.config/nvim/plugins-config/commenter.vim
source $HOME/.config/nvim/plugins-config/limelight.vim
source $HOME/.config/nvim/plugins-config/goyo.vim
source $HOME/.config/nvim/plugins-config/minimap.vim
source $HOME/.config/nvim/plugins-config/deep-space.vim
source $HOME/.config/nvim/plugins-config/gruvbox.vim
source $HOME/.config/nvim/plugins-config/dashboard.vim
source $HOME/.config/nvim/plugins-config/telescope.vim
source $HOME/.config/nvim/plugins-config/nvim-treesitter.vim
source $HOME/.config/nvim/plugins-config/fzf.vim
source $HOME/.config/nvim/plugins-config/netwr.vim

luafile $HOME/.config/nvim/lua/plugins/dashboard.lua

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keys.vim
source $HOME/.config/nvim/general/commands.vim

set omnifunc=syntaxcomplete#Complete

syntax enable
colorscheme gruvbox

autocmd VimEnter *
      \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|  PlugInstall --sync | q
      \|endif
