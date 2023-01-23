--print('packer.lua loaded')

vim.cmd [[packadd packer.nvim]]


--local use = require('packer').use
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- package manager
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Telescope fuzzy finder
    use ({'sainnhe/gruvbox-material'})
   -- use ({'nvim-treesitter/nvim-treesitter'}, {run = ':TSUpdate'})
    use ({'Yggdroot/indentLine'})
    use ({'theprimeagen/harpoon'})
   --use ({'sbdchd/neoformat'})
    use ({'vim-airline/vim-airline'})
    use ({'vim-airline/vim-airline-themes'})
    use ({'scrooloose/nerdtree'}) 
    use ({'jistr/vim-nerdtree-tabs'})
    use ({'avelino/vim-bootstrap-updater'})
    --use ({'tpope/vim-commentary'})
    --use ({'tpope/vim-fugitive'})

    --use ({'bronson/vim-trailing-whitespace'})
    --use ({'Raimondi/delimitMate'})
    --use ({'majutsushi/tagbar'})

    use 'williamboman/nvim-lsp-installer' -- Automatically install LSPs
    use 'neovim/nvim-lspconfig' -- config for NVIM LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- Autocompletion with LSPs
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'saadparwaiz1/cmp_luasnip' -- Snippets autocompletion

end )
