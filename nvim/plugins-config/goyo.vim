function! s:goyo_leave()
	hi Normal ctermbg=NONE guibg=NONE
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()
