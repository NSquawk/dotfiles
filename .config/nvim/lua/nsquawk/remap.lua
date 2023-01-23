--print('remap.lua loaded')

vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set('n','<leader>pr', vim.cmd.Rex)
vim.keymap.set('n', '<CR>', ':noh<CR><CR>')

-- Split
vim.keymap.set('n', '<leader>h', vim.cmd.split)
vim.keymap.set('n', '<leader>v', vim.cmd.vsplit)

-- Cut/Copy
vim.keymap.set('n','YY','"+y<CR>"')
--vim.keymap.set('n','<leader>p','"+gP<CR>"')
vim.keymap.set('n','XX','+x<CR>')


vim.keymap.set('n', '<Tab>', vim.cmd.gt)
vim.keymap.set('n', '<S-Tab>', vim.cmd.gT)
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


vim.keymap.set('n','<leader>J','<C-W>J')
vim.keymap.set('n','<leader>K','<C-W>K')
vim.keymap.set('n','<leader>L','<C-W>L')
vim.keymap.set('n','<leader>H','<C-W>H')

-- Vmap for maintain Visual Mode after shifting > and <
--vim.keymap.set('v','<','<gv')
--vim.keymap.set('v','>','>gv')

-- Move visual block
vim.keymap.set('v', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', 'K', ':m \'<-2<CR>gv=gv')

vim.cmd ([[
function! OpenLines(nrlines, dir)
  let nrlines = a:nrlines < 3 ? 3 : a:nrlines
  let start = line('.') + a:dir
  call append(start, repeat([''], nrlines))
  if a:dir < 0
    normal! 2k
  else
    normal! 2j
  endif
endfunction
]])
-- Mappings to open multiple lines and enter insert mode.
vim.keymap.set('n', '<leader>o', ':<C-u>call OpenLines(v:count, 0)<CR>S')
vim.keymap.set('n', '<leader>O', ':<C-u>call OpenLines(v:count, -1)<CR>S')



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
--]])
