function edit_cmd --description 'Input command in external editor'
	set -l f (mktemp /tmp/fish.cmd.XXXXXXXX)
	if test -n "$f"
		set -l p (commandline -C)
		commandline -b > $f
		vim -c 'set ft=fish' $f
		commandline -r (more $f)
		commandline -C $p
		command rm $f
	end
end

function vim_dot
	vim .
end

function fish_user_key_bindings
	bind \ce 'edit_cmd'
	bind \ck up-or-search
	bind \co forward-char
	bind \cj down-or-search
	
	bind \cx 'vim_dot'
end
