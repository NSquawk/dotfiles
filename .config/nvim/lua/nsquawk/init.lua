--print("nsquawk init.lua loaded")

require('nsquawk.packer')
require("nsquawk.options")
require("nsquawk.remap")

vim.g.gruvbox_material_foreground = 'original'

vim.cmd[[colorscheme gruvbox-material]]


-- vim.cmd([[
--     augroup packer_user_config
--         autocmd!
--         autocmd BufWritePost nvim_init.lua source <afile> | PackerCompile
--     augroup end
-- ]])

-- require("nvim-lsp-installer").setup({
--     -- List of servers to automatically install
--     ensure_installed = {'clangd'},
--     -- automatically detect which servers to install (based on which servers are set up via lspconfig)
--     automatic_installation = true,
--     ui = {
--         icons = {
--             server_installed = "✓",
--             server_pending = "➜",
--             server_uninstalled = "✗"
--         }
--     }
-- })




