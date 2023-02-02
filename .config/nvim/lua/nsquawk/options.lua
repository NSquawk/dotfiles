--print('options.lua loaded')
vim.opt.writebackup = false

--set backspace=indent,eol,start

-- Tabs. May be overriten by autocmd rules
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true


-- Enable hidden buffers
vim.opt.hidden = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Searching
--vim.cmd([[
--    set hlsearch
--    set incsearch
--    set ignorecase
--    set smartcase
--]])

-- Directories for swp files
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- / search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- not entirely sure if this is working...
--vim.opt.showcmd = true

vim.g.session_autosave = 'no'
vim.g.session_autoload = 'no'

vim.opt.termguicolors = false


--vim.bo.buffers_menu = false
--vim.cmd[[
--    no_buffers_menu=1
--]]

-- Cut/Copy/Paste
vim.opt.clipboard = 'unnamed,unnamedplus'

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50

vim.opt.colorcolumn = '120'


--"*****************************************************************************
-- Visual Settings
--******************************************************************************
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
