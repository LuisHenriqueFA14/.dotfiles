function Slider()
	nnoremap J <C-v>j:VBox<CR>
	nnoremap K <C-v>k:VBox<CR>
	nnoremap L <C-v>l:VBox<CR>
	nnoremap H <C-v>h:VBox<CR>

	vnoremap f :VBox<CR>

	set ve=all

	execute 'IndentBlanklineDisable'
endfunction
