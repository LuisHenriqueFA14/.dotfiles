hi! CocErrorSign guifg=#FF0000 guibg=NONE
hi! CocInfoSign guifg=#0ffaa4 guibg=NONE
hi! CocWarningSign guifg=#fcdf03 guibg=NONE
hi! CocHintSign guifg=#00FF00 guibg=NONE

nnoremap <leader>rr <Plug>(coc-rename)
nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gr <Plug>(coc-references)

nnoremap <leader>prw :CocSearch <C-r>=expand("<cword>")<CR><CR>

let g:coc_enable_locationlist = 1
