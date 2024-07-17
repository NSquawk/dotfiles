--local vim = require('vim')
--print('options.lua loaded')
vim.opt.writebackup = false

--set backspace=indent,eol,start

-- Tabs. May be overriten by autocmd rules
vim.opt.tabstop=4
vim.opt.softtabstop=3
vim.opt.shiftwidth=4
vim.opt.expandtab = true


vim.opt.showmode = false

-- Enable hidden buffers
vim.opt.hidden = true

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.cursorline = true
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

vim.opt.background = 'dark'
vim.opt.termguicolors = true



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



--"*****************************************************************************
-- treesitter code folding
--******************************************************************************
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.opt.foldnestmax = 1

vim.cmd[[

        if has('termguicolors')
          set termguicolors
        endif

        " For dark version.
        set background=dark


        " Set contrast.
        " This configuration option should be placed before `colorscheme everforest`.
        " Available values: 'hard', 'medium'(default), 'soft'
        let g:everforest_background = 'hard'
        let g:gruvbox_material_background = 'hard'

        " For better performance
        let g:everforest_better_performance = 1
        let g:gruvbox_material_better_performance = 1

        colorscheme gruvbox-material
        "colorscheme everforest
]]
