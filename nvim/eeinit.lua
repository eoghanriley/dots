require("eriley.init")

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/.nvim/plugged')

Plug ('neoclide/coc.nvim', {branch= 'release'})
Plug 'scrooloose/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'scrooloose/nerdcommenter'
Plug 'Mofiqul/dracula.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug ('evanleck/vim-svelte', {branch= 'main'})
Plug 'pantharshit00/vim-prisma'
Plug ('prettier/vim-prettier', {['do']= 'yarn install'})
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzid/nvim-lspinstall'
Plug ('iamcco/coc-tailwindcss',  {['do']= 'yarn install --frozen-lockfile && yarn run build'})

Plug 'christoomey/vim-tmux-navigator'


Plug 'HerringtonDarkholme/yats.vim'

vim.call('plug#end')