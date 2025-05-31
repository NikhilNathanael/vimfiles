
vim9script
# Remaps and Abbreviations
	# Map the required hotkeys
		inoremap <buffer> {<cr> {<cr>}<esc>O
		inoremap <buffer> (<cr> (<cr>)<esc>O
		inoremap <buffer> [<cr> [<cr>]<esc>O

# Compiler quickfix list integration 
	set makeprg=dotnet
	# Reset errorformat
	setlocal errorformat=\ 
	# Error format for C# errors
	# The same format can be adapted for warnings 
	setlocal errorformat+=%f(%l\\,%c):\ %trror\ CS%n:\ %m%.%#



# Compile and Execute Shortcuts
	# Compile hotkey is F8
		nnoremap <buffer> <F8> :make build<cr>
	# Execute hotkey is F9
		nnoremap <buffer> <F9> :!dotnet run<cr>

# Comment String for comment plugin
	setlocal commentstring=//%s
