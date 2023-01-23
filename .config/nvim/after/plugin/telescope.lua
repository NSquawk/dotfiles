local builtin = require('telescope.builtin')


-- Telescope
--require('telescope').setup({
--    defaults = {
--        mappings = {
--            i = {
--                ['<C-u>'] = false,
--                ['<C-d>'] = false,
--            },
--        },
--    },
--})


vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ')});
    -- run first: sudo apt install ripgrep
end)



-- Enable telescope fzf native
--require('telescope').load_extension 'fzf'
--Add leader shortcuts
--vim.keymap.set('n', '<leader>sD', require('telescope.builtin').buffers)
--vim.keymap.set('n', '<leader>sf', function()
--    require('telescope.builtin').find_files { previewer = false }
--end)
--vim.keymap.set('n', '<leader>sb', require('telescope.builtin').current_buffer_fuzzy_find)
----vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags)
----vim.keymap.set('n', '<leader>st', require('telescope.builtin').tags)
--vim.keymap.set('n', '<leader>sd', require('telescope.builtin').grep_string)
--vim.keymap.set('n', '<leader>sp', require('telescope.builtin').live_grep)
--vim.keymap.set('n', '<leader>so', function()
--    require('telescope.builtin').tags { only_current_buffer = true }
--end)
--vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles)



