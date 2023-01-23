--print('options.lua loaded')
vim.opt.writebackup = false

--set backspace=indent,eol,start

-- Tabs. May be overriten by autocmd rules
vim.opt.tabstop=4
vim.opt.softtabstop=0
vim.opt.shiftwidth=4
vim.opt.expandtab = true


-- Enable hidden buffers
vim.opt.hidden = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Searching
vim.cmd([[
    set hlsearch
    set incsearch
    set ignorecase
    set smartcase
]])

-- Directories for swp files
vim.opt.backup = false
vim.opt.swapfile = false

-- not entirely sure if this is working...
--vim.opt.showcmd = true

vim.g.session_autosave = 'no'
vim.g.session_autoload = 'no'

--vim.bo.buffers_menu = false
--vim.cmd[[
--    no_buffers_menu=1
--]]

-- Cut/Copy/Paste
vim.opt.clipboard = 'unnamed,unnamedplus'


--"*****************************************************************************
-- Visual Settings
--******************************************************************************
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
