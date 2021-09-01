" Find files using Telescope command-line sugar.
nnoremap <leader>ff :lua require('telescope.builtin').find_files({previewer = false})<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
