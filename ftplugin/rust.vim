" Written by Nikhil Nathanael Ilango
" Started on Saturday, August 19, 2023 at 1:52:58 PM
" Settings
set noexpandtab
if !exists("g:rust_recommended_style") 
	let g:rust_recommended_style = 0
endif

" Settings with vim-lsp
	" if exists("g:lsp_loaded")
		nnoremap <buffer>  <plug>(lsp-definition)
	" endif

" Remaps and Abbreviations
	" Map the required hotkeys
		" Open curly braces 
			inoremap <buffer> <nowait> {<cr> {<cr>}<esc>O
		" Open parentheses
			inoremap <buffer> <nowait> (<cr> (<cr>)<esc>O
		" Open square brackets
			inoremap <buffer> <nowait> [<cr> [<cr>]<esc>O
		" println macro
			inoreabbr <buffer> <nowait> println println!("{:?}", 

	" Snippets
		" For loop 
		" Printf 
		" Scanf 

	" Searches

	" Two consecutive spaces in insert mode moves cursor to next tag

" Compiler quickfix list integration 
	set makeprg=cargo
	setlocal errorformat=\ 
	" Note: `| ` at the beginning of the example lines indicates the start of
	" the line in the actual output, it is not part of the actual output

	" excludes line at the bottom of the compiler output which lists the
	" number of warnings and errors
	" | warning: `dynamodb_test` (bin "dynamodb_test") generated 3 warnings
	" | error: could not compile `dynamodb_test` (bin "dynamodb_test") due to 1 previous error
	setlocal errorformat+=%-Gerror:\ could\ not\ compile%m
	setlocal errorformat+=%-Gwarning:%.%#generated\ %n\ warnings%\\?%.%#

	" This has been disabled because warnings are annoying in the quickfix
	" output. If warnings are needed, they can be accessed by directly using 
	" !cargo check
	" Warning format of rust 
	" | warning: function `create_attr_def` is never used
	" |   --> src\main.rs:89:4
	" setlocal errorformat+=%W%tarning:%m

	" Semantic error format of rust (notice the error code (E0443))
	" | error[E0433]: failed to resolve: use of undeclared crate or module `sAttributeDefinition`
	" |   --> src\main.rs:90:2
	setlocal errorformat+=%E%trror[E%n]:%m

	" Syntax error format of rust (notice the missing error code)
	" | error: missing `fn` for function definition
	" |   --> src\main.rs:98:1	
	setlocal errorformat+=%E%trror:%m


	" Matches lines like this which are present at every error and warning site
	" |   --> src\main.rs:89:4
	setlocal errorformat+=%Z%\\s%#-->\ %f:%l:%c
	
	" if any of the previous lines are not enough to contain the entire error
	" or warning, it spills over to the next line which must always be
	" included
	" Note: THIS HAS BEEN COMMITTED WITHOUT BEING VERIFIED TO WORK YET.
	" IF YOU COME BACK TO THIS, PLEASE REMOVE THIS NOTE IF IT WORKS OR FIX IT
	" IF IT DOESN'T
	setlocal errorformat+=%C%m

	" Exclude any empty lines (makes the errors easier to read)
	setlocal errorformat+=%-G%\\s%#
	
	" The rust compiler emits an empty line after every error or warning.
	" The two lines below will include all lines in the output until the empty
	" line is reached 
	" It has been disabled because it makes the error less readable
	" setlocal errorformat+=%C%m
	" setlocal errorformat+=%Z%\\s%#
	
	" only include matching lines 
	" this has been disabled because it removes too much information from the
	" output
	" setlocal errorformat+=%-G%.%#

	" TODO: Some types of errors and warnings in rust have extra help text.
	" these need to be added to the quickfix output
	" TODO: Some errors and warnings can be multiple lines long. These are
	" ingored by the current error format. 

" Create custom highlighting for user defined variables, structures and functions
	" let s:dataTypes = ["int", "long", "double", "float", "struct", "void"]
	" let s:listOfStructureVariables = []
	" let s:listOfFunctionIdentifiers = []
	" function! s:UserDefinedIndentifierHighlighting () 
				
	" endfunction


" Compile and Execute Shortcuts
	" Compile hotkey is F8
		nnoremap <buffer> <F8> :w <bar> make! check <cr>
	" Execute hotkey is F9
		nnoremap <buffer> <F9> :!cargo run <cr>

" Tagfile
	" Command to create tag files
	command -buffer MakeTags !rusty-tags vi
	" Add tag file to tags
	setlocal tags+=rusty-tags.vi

" Comment String for comment plugin
	setlocal commentstring=//%s
