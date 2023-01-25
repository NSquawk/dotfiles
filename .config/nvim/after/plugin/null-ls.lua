print('hello from null-ls')
local null_ls = require('null-ls')

local sources = {
        null_ls.builtins.formatting.clang_format.with {
            filetypes = { 'c', 'cpp' },
          --  extra_arge = { '--style', 'file:~/.clang-format' }
        }
    }


local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        vim.lsp.buf.format()
        end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
