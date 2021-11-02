" Find files using Telescope command-line sugar.
nnoremap <leader>rr :lua require('plugins.refactoring').refactors()<CR>
vnoremap <leader>rr :lua require('plugins.refactoring').refactors()<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files({previewer = false})<cr>
nnoremap <leader>fr :lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
