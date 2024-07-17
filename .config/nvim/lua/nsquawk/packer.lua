--print('packer.lua loaded')

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

    use 'kdheepak/lazygit.nvim' 
    use 'airblade/vim-gitgutter'     
 
     -- Telescope fuzzy finder
    use {
         'nvim-telescope/telescope.nvim',
         branch = '0.1.x',
         requires = {
              'nvim-lua/plenary.nvim',
           -- Fuzzy Finder Algorithm which requires local dependencies to be built.
           -- Only load if `make` is available. Make sure you have the system
           -- requirements installed.
           { 
            'nvim-telescope/telescope-fzf-native.nvim',
            --NOTE: If you are having trouble with this installation,
            --      refer to the README for telescope-fzf-native for more instructions.
            run = 'make',
              -- cond = function()
              --   return vim.fn.executable 'make' == 1
              -- end,
            },
         },
     }

    -- themes
    use 'sainnhe/gruvbox-material'
    --use 'sainnhe/everforest'

    use {'nvim-treesitter/nvim-treesitter',
         requires = {
             'nvim-treesitter/nvim-treesitter-textobjects',
         },

        run = ':TSUpdate',
    }
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'Yggdroot/indentLine'
    use 'theprimeagen/harpoon' 
    --use 'vim-airline/vim-airline' 
    --use 'vim-airline/vim-airline-themes' 

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'scrooloose/nerdtree' 
    use 'jistr/vim-nerdtree-tabs' 
    use 'tpope/vim-commentary' 
    use 'tpope/vim-fugitive' 
    use {"akinsho/toggleterm.nvim", 
        tag = '*', 
        config = function()
            require("toggleterm").setup()
        end
    }
    use 'fatih/vim-go'
    use  'simrat39/rust-tools.nvim' 

    use {
        'jose-elias-alvarez/null-ls.nvim',
         requires = { 'nvim-lua/plenary.nvim' }, 
    }
    use 'mbbill/undotree'

    -- Useful plugin to show you pending keybinds.
    use { 'folke/which-key.nvim', opts = {} }

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
            { 'hrsh7th/cmp-nvim-lsp-signature-help' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional

            -- formatting
        }
    }

    -- use {
    -- -- Adds git related signs to the gutter, as well as utilities for managing changes
    -- 'lewis6991/gitsigns.nvim',
    -- opts = {
    --   -- See `:help gitsigns.txt`
    --   signs = {
    --     add = { text = '+' },
    --     change = { text = '~' },
    --     delete = { text = '_' },
    --     topdelete = { text = '‾' },
    --     changedelete = { text = '~' },
    --   },
    --   on_attach = function(bufnr)
    --     vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, { buffer = bufnr, desc = 'Preview git hunk' })

    --     -- don't override the built-in and fugitive keymaps
    --     local gs = package.loaded.gitsigns
    --     vim.keymap.set({ 'n', 'v' }, ']c', function()
    --       if vim.wo.diff then
    --         return ']c'
    --       end
    --       vim.schedule(function()
    --         gs.next_hunk()
    --       end)
    --       return '<Ignore>'
    --     end, { expr = true, buffer = bufnr, desc = 'Jump to next hunk' })
    --     vim.keymap.set({ 'n', 'v' }, '[c', function()
    --       if vim.wo.diff then
    --         return '[c'
    --       end
    --       vim.schedule(function()
    --         gs.prev_hunk()
    --       end)
    --       return '<Ignore>'
    --     end, { expr = true, buffer = bufnr, desc = 'Jump to previous hunk' })
    --   end,
    -- },
 -- }
end)
