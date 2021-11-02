" nnoremap <silent> <leader>[ :tabn <CR> 
" nnoremap <silent> <leader>] :tabp <CR>
" nnoremap <silent> <leader>+ :tabnew <CR>
" nnoremap <silent> <leader>- :bdelete <CR>

"nnoremap <silent> <A-j> :m .+1<CR>==
"nnoremap <silent> <A-k> :m .-2<CR>==

tnoremap <Esc> <C-\><C-n>
nnoremap <silent><esc> :noh<return><esc>

nnoremap <C-Space> :Telescope <CR>

nnoremap <DEL> v"_d<ESC>
vnoremap <DEL> "_d

vnoremap < <gv
vnoremap > >gv

" xnoremap <leader>( <ESC>`>a)<ESC>`<i(<ESC>
" xnoremap <leader>{ <ESC>`>a}<ESC>`<i{<ESC>
" xnoremap <leader>[ <ESC>`>a]<ESC>`<i[<ESC>
" xnoremap <leader>< <ESC>`>a><ESC>`<i<<ESC>
" xnoremap <leader>" <ESC>`>a"<ESC>`<i"<ESC>
" xnoremap <leader>' <ESC>`>a'<ESC>`<i'<ESC>

vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap { <ESC>`>a}<ESC>`<i{<ESC>
vnoremap [ <ESC>`>a]<ESC>`<i[<ESC>
vnoremap <leader>< <ESC>`>a><ESC>`<i<<ESC>
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>


nnoremap . ;
vnoremap . ;

nnoremap Y y$

nnoremap <silent> <C-b> :e# <CR>

inoremap <C-Space> <Esc>
nnoremap <C-Space> <Esc>

nnoremap <leader>v v$
nnoremap <leader>V v0

nnoremap _ $

inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>

vnoremap <silent> <A-j> :m '>+1<CR>gv=gv
vnoremap <silent> <A-k> :m '<-2<CR>gv=gv

nnoremap <C-t> :terminal<CR>a

tnoremap <C-@> <Esc>

nnoremap <silent><leader>b :lua require('quito.anime_selector').anime_selector()<CR>

nnoremap <silent>M :call append(line('.')-1, '')<CR>
nnoremap <silent>m :call append(line('.'), '')<CR>

nnoremap <silent><leader>d :call CocAction('doHover')<CR>
