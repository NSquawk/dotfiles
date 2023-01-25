--print('packer.lua loaded')

vim.cmd [[packadd packer.nvim]]


--local use = require('packer').use
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- package manager
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Telescope fuzzy finder
    use({ 'sainnhe/gruvbox-material' })
    use({ 'nvim-treesitter/nvim-treesitter' }, { run = ':TSUpdate' })
    use({ 'Yggdroot/indentLine' })
    use({ 'theprimeagen/harpoon' })
    --use ({'sbdchd/neoformat'})
    use({ 'vim-airline/vim-airline' })
    use({ 'vim-airline/vim-airline-themes' })
    use({ 'scrooloose/nerdtree' })
    use({ 'jistr/vim-nerdtree-tabs' })
    use({ 'avelino/vim-bootstrap-updater' })
    use({ 'tpope/vim-commentary' })
    use({ 'tpope/vim-fugitive' })

    --use ({'bronson/vim-trailing-whitespace'})
    --use ({'Raimondi/delimitMate'})
    --use ({'majutsushi/tagbar'})

    use({
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' }, -- this isn't installing for some reason
    })
    use('mbbill/undotree')
    --use ('williamboman/nvim-lsp-installer') -- Automatically install LSPs
    --use ('mhartington/formatter.nvim')


    use { 'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional

            -- formatting
        }
    }

end)
