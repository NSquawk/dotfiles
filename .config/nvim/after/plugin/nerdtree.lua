vim.g.NERDTreeChDirMode=2

--vim.g.NERDTreeIgnore={'\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__'}
--vim.g.NERDTreeSortOrder={'^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$'}
--vim.g.NERDTreeShowBookmarks=1
--vim.g.nerdtree_tabs_focus_on_files=3
--vim.g.NERDTreeMapOpenInTabSilent = '<RightMouse>'
--vim.g.NERDTreeWinSize = 30

vim.keymap.set('n','<silent> <F2>', ':NERDTreeFind<CR>')
vim.keymap.set('n','<C-n>', ':NERDTreeToggle<CR>')
