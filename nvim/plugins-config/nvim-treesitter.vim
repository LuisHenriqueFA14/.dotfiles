
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
" ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
" -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
" highlight = {
	" enable = true,              -- false will disable the whole extension
	" disable = {},  -- list of language that will be disabled
" },
" }
" EOF

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
