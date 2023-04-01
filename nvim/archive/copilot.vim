nnoremap <leader>cs <cmd>Copilot status<cr>
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
