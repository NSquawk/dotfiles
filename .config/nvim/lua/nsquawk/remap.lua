--print('remap.lua loaded')

vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set('n','<leader>pr', vim.cmd.Rex)
vim.keymap.set('n', '<CR>', ':noh<CR><CR>')

-- Split
vim.keymap.set('n', '<leader>h', vim.cmd.split)
vim.keymap.set('n', '<leader>v', vim.cmd.vsplit)

-- Cut/Copy
vim.keymap.set('n','YY','"+y')
--vim.keymap.set('n','<leader>p','"+gP<CR>"')
vim.keymap.set('n','XX','+x')


vim.keymap.set('n', '<C-Right>', 'gt<CR>')-- vim.cmd.gt)
vim.keymap.set('n', '<C-Left>', 'gT<CR>')-- vim.cmd.gt)
-- vim.keymap.set('n', '<S-Tab>','gT<CR>')-- vim.cmd.gT)
-- vim.keymap.set('n', '<S-Tab>','gT<CR>')-- vim.cmd.gT)
vim.keymap.set('n', '<silent> <S-t>', ':tabnew<CR>')


-- Buffer Nav
vim.keymap.set('n','<leader>z',':bp<CR>')
vim.keymap.set('n','<leader>x',':bn<CR>')

-- Buffer Close
vim.keymap.set('n','<leader>c',':bd<CR>')


-- Moving between windows
vim.keymap.set('n','<C-j>','<C-w>j')
vim.keymap.set('n','<C-k>','<C-w>k')
vim.keymap.set('n','<C-l>','<C-w>l')
vim.keymap.set('n','<C-h>','<C-w>h')


-- Reposition windows
vim.keymap.set('n','<leader>J','<C-W>J')
vim.keymap.set('n','<leader>K','<C-W>K')
vim.keymap.set('n','<leader>L','<C-W>L')
vim.keymap.set('n','<leader>H','<C-W>H')

-- Vmap for maintain Visual Mode after shifting > and <
vim.keymap.set('v','<','<gv')
vim.keymap.set('v','>','>gv')

-- Move visual block
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

-- key cursor poisiton  with J
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep cursor centered vertically with zz 
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep search centered vertically
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', '"_dp')
vim.keymap.set('n', '<leader>y', '"+y')



--vim.cmd ([[
--cnoreabbrev W! w!
--cnoreabbrev Q! q!
--cnoreabbrev Qall! qall!
--cnoreabbrev Wq wq
--cnoreabbrev Wa wa
--cnoreabbrev wQ wq
--cnoreabbrev WQ wq
--cnoreabbrev W w
--cnoreabbrev Q q
--cnoreabbrev Qall qall
----]])


function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.cmd ([[
xnoremap aM :<c-u>normal [mv]M<cr>
onoremap aM :normal vaM<cr>
]])
--vim.keymap.set('n', 'aM', '[mv]M<CR>' , opts)
