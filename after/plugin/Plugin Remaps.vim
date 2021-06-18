" Written by Nikhil Nathanael Ilango
" Started on Wednesday, June 16, 2021 at 6:35:33 PM

" Change vim-commentary bindings
	if maparg('gc', 'n') ==# '<Plug>Commentary'
		xunmap gc
		nunmap gc
		ounmap gc
		nunmap gcc
		xmap cm <Plug>Commentary
		nmap cm <Plug>Commentary
		omap cm <Plug>Commentary
		nmap cmm <Plug>CommentaryLine
		nmap cmu <Plug>Commentary<Plug>Commentary
	endif

" Change vim-titlecase bindings 
	if g:titlecase_map_keys
		nunmap gt
		vunmap gt
		nunmap gT
		nmap gc <Plug>Titlecase
		vmap gc <Plug>Titlecase
		nmap gC <Plug>TitlecaseLine
	endif
