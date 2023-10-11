vim.cmd[[
let g:go_def_mapping_enabled = 0

augroup go

  au!
  "au FileType go nmap <Leader>dd <Plug>(go-def-vertical)
  "au FileType go nmap <Leader>dv <Plug>(go-doc-vertical)
  "au FileType go nmap <Leader>db <Plug>(go-doc-browser)

  au FileType go nmap <leader>R  :GoRun<cr>
  au FileType go nmap <leader>t :GoTest<cr>
  au FileType go nmap <Leader>i :GoInfo<cr>
"  au FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
  au FileType go nmap <C-g> :GoDecls<cr>
  au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
 " au FileType go nmap <leader>rb :<C-u>call <SID>build_go_files()<CR>

  au FileType go nmap <Leader>gb <Plug>(go-build)

augroup END
]]
