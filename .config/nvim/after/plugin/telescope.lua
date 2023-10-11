local builtin = require('telescope.builtin')
pcall(require('telescope').load_extension 'fzf')
--require('telescope').load_extension 'fzf'




vim.keymap.set('n', '<leader>?', builtin.oldfiles , {desc = '[?] Find recently opened files'})
vim.keymap.set('n', '<leader><space>', builtin.buffers , {desc = '[ ] Find existing buffers'})
vim.keymap.set('n', '<leader>sf', builtin.find_files, {desc = '[S]earch [F]iles'})
vim.keymap.set('n', '<leader>sh', builtin.help_tags , {desc = '[S]earch [H]elp'})

vim.keymap.set('n', '<leader>sw', builtin.grep_string , {desc = '[S]earch current [W]ord'})
vim.keymap.set('n', '<leader>sg', builtin.live_grep , {desc = '[S]earch by [G]rep'})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics , {desc = '[S]earch [D]iagnostics'})
vim.keymap.set('n', '<leader>sb', builtin.current_buffer_fuzzy_find, {desc = '[S]earch current [B]uffer'})



vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input('Grep > ')});
--     -- run first: sudo apt install ripgrep
-- end)

-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Enable telescope fzf native
--Add leader shortcuts
--vim.keymap.set('n', '<leader>sD', require('telescope.builtin').buffers)
--vim.keymap.set('n', '<leader>sf', function()
--    require('telescope.builtin').find_files { previewer = false }
--end)
----vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags)
----vim.keymap.set('n', '<leader>st', require('telescope.builtin').tags)
--vim.keymap.set('n', '<leader>sd', require('telescope.builtin').grep_string)
--vim.keymap.set('n', '<leader>sp', require('telescope.builtin').live_grep)
--vim.keymap.set('n', '<leader>so', function()
--    require('telescope.builtin').tags { only_current_buffer = true }
--end)
--vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles)



