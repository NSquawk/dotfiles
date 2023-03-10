require('toggleterm').setup{
    size =  function(term)
        if term.direction == "horizontal" then
          return 20
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
    end,
    open_mapping = '<C-t>',
    direction = 'horizontal',
    terminal_mappings = false,
    start_in_insert = false
}

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

-- vim.cmd [[
-- nnoremap <silent><c-t>t <Cmd>exe v:count1 . "ToggleTerm"<CR>
-- inoremap <silent><c-t>t <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
-- ]]

-- vim.keymap.set('n', '<leader>ta',':ToggleTermToggleAll<CR>')
-- vim.keymap.set('n', '<leader>tc',':ToggleTermSendCurrentLine')
-- vim.keymap.set('v', '<leader>tl',':ToggleTermSendVisualLines<CR>')
-- vim.keymap.set('v', '<leader>tv',':ToggleTermSendVisualSelection<CR>')


-- vim.cmd[[
-- command! ToggleTermCloseAll lua require('toggleterm').toggle_all('close')
-- command! ToggleTermOpenAll lua require('toggleterm').toggle_all('open')
-- ]]
