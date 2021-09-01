nnoremap <silent> <leader>n :NERDTreeFocus<cr>
nnoremap <silent> <leader><Tab> :NERDTreeToggle<cr>
nnoremap <silent> <leader>' :NERDTreeFind<CR>

let NERDTreeMapActivateNode='<ENTER>'

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeHijackNetrw = 0
