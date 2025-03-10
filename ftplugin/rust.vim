" Written by Nikhil Nathanael Ilango
" Started on Saturday, August 19, 2023 at 1:52:58 PM
" Settings
set noexpandtab
if !exists("g:rust_recommended_style") 
	let g:rust_recommended_style = 0
endif

" Settings with vim-lsp
	if exists("g:lsp_loaded")
		nnoremap <buffer>  <plug>(lsp-definition)
	endif

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


" Create custom highlighting for user defined variables, structures and functions
	" let s:dataTypes = ["int", "long", "double", "float", "struct", "void"]
	" let s:listOfStructureVariables = []
	" let s:listOfFunctionIdentifiers = []
	" function! s:UserDefinedIndentifierHighlighting () 
				
	" endfunction


" Compile and Execute Shortcuts
	" Compile hotkey is F8
		nnoremap <buffer> <F8> :w <bar> !cargo check <cr>
	" Execute hotkey is F9
		nnoremap <buffer> <F9> :!cargo run <cr>


" Set Compiler

" Comment String for comment plugin
	setlocal commentstring=//%s
