function Present()
	let name = expand('%:p')
	let query = "terminal mdp -f ".name
	execute query
	Goyo 100%x100%
	execute "startinsert"
	nmap q <silent>:q!<CR>:bd!<CR>
endfunction

function Edit(file)
	execute "Vifm ".a:file
endfunction

command -nargs=1 E call Edit(<f-args>) 
command Presentation call Present()
command -nargs=1 CocToggle call CocAction('toggleExtension', <f-args>)
