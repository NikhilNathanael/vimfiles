" Written by Nikhil Nathanael Ilango
" Started on Wednesday, June 16, 2021 at 6:35:33 PM

" Change vim-titlecase bindings 
	if g:titlecase_map_keys
	  nunmap gt
	  vunmap gt
	  nunmap gT
	  nmap gc <Plug>Titlecase
	  vmap gc <Plug>Titlecase
	  nmap gC <Plug>TitlecaseLine
	endif
