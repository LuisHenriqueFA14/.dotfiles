let $FZF_DEFAULT_COMMAND = "rg --files -g '!node_modules' -g '!target' -g '!.git' -g '!autoload'"

let g:fzf_layout = { 'down': '30%' }

autocmd VimEnter * command! -bang -nargs=? Files call fzf#vim#files(<q-args>, {'options': '--no-preview'}, <bang>0)

nnoremap <silent> <C-p> :Files <CR>
