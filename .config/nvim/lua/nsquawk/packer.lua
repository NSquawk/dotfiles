--print('packer.lua loaded')

--vim.cmd [[packadd packer.nvim]]


local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- package manager
    use { 'nvim-telescope/telescope.nvim',
        requires = {{ 'nvim-lua/plenary.nvim' }, { 'kdheepak/lazygit.nvim' }},
        config = function()
            require('telescope').load_extension('lazygit')
        end,
    }-- Telescope fuzzy finder
    use({ 'sainnhe/gruvbox-material' })
    use({ 'nvim-treesitter/nvim-treesitter' }, { run = ':TSUpdate' })
    use({ 'Yggdroot/indentLine' })
    use({ 'theprimeagen/harpoon' })
    use({ 'vim-airline/vim-airline' })
    use({ 'vim-airline/vim-airline-themes' })
    use({ 'scrooloose/nerdtree' })
    use({ 'jistr/vim-nerdtree-tabs' })
    use({ 'avelino/vim-bootstrap-updater' })
    use({ 'tpope/vim-commentary' })
    use({ 'lewis6991/gitsigns.nvim' })
--    use({ 'numToStr/FTerm.nvim' })
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    --use ({'bronson/vim-trailing-whitespace'})
    --use ({'Raimondi/delimitMate'})
    --use ({'majutsushi/tagbar'})

    use({
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' }, 
    })
    use('mbbill/undotree')

    use ({ 'hrsh7th/cmp-cmdline' })
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
