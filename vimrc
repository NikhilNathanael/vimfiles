" From $VIMRUNTIME
    " " Allow highlighting in the middle of a search
    "     " Vim with all enhancements
    "     " source $VIMRUNTIME/vimrc_example.vim
        
    "     " Use the internal diff if available.
    "     " Otherwise use the special 'diffexpr' for Windows.
    "         if &diffopt !~# 'internal'
    "         set diffexpr=MyDiff()
    "         endif
    "         function MyDiff()
    "             let opt = '-a --binary '
    "             if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    "             if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    "             let arg1 = v:fname_in
    "             if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    "             let arg1 = substitute(arg1, '!', '\!', 'g')
    "             let arg2 = v:fname_new
    "             if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    "             let arg2 = substitute(arg2, '!', '\!', 'g')
    "             let arg3 = v:fname_out
    "             if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    "             let arg3 = substitute(arg3, '!', '\!', 'g')
    "             if $VIMRUNTIME =~ ' '
    "                 if &sh =~ '\<cmd'
    "                 if empty(&shellxquote)
    "                     let l:shxq_sav = ''
    "                     set shellxquote&
    "                 endif
    "                 let cmd = '"' . $VIMRUNTIME . '\diff"'
    "                 else
    "                 let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "                 endif
    "             else
    "                 let cmd = $VIMRUNTIME . '\diff'
    "             endif
    "             let cmd = substitute(cmd, '!', '\!', 'g')
    "             silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
    "             if exists('l:shxq_sav')
    "                 let &shellxquote=l:shxq_sav
    "             endif
    "         endfunction
	" " Defaults
		" source $VIMRUNTIME/defaults.vim 


" Preferences
	" Indentation
		set tabstop=4
		set shiftwidth=4
		filetype plugin indent on
		set autoindent
			
	" General
		" Use Vim settings, rather than Vi settings (much better!).
		" This must be first, because it changes other options as a side effect.
		" Avoid side effects when it was already reset.
		if &compatible
		  set nocompatible
		endif

		syntax on								" Enables syntax highlighting
		set number								" Enables line numbering for current line
		set relativenumber						" Enables relative line numbering for all other lines
		command VimRC :tabedit ~\vimfiles\vimrc	" Defines a command to quickly open ~\_vimrc is vsplit window
		colorscheme custom						" Modified version of Darkblue
		set lazyredraw							" Does not redraw the screen in the middle of macros and commands
		set shell=powershell.exe				" Changes the shell from the default cmd.exe to powershell.exe
		set backspace=indent,eol,start			" Allow backspacing over everything in insert mode.
		set belloff=all							" Disable error sounds
		set autowrite
		set smartcase ignorecase
		set scrolloff=5
		set display=truncate

		" Undo and Backup files
				set backup								" Enable backup file
				set undofile							" Enable persistent undo

			" Stores backup files at this directory
				set backupdir=~\vimfiles\vimBackups~\

			" Stores undofiles at this directory
				set undodir=~\vimfiles\.vimundo\

		" WildIngore files
			set wildignore+=*.exe,*.*~
		" Allow backspacing over everything in insert mode.
			set backspace=indent,eol,start

	" Search highlighting 
		set incsearch
		set hlsearch						" Enables highlighting of previously searched terms
		nohlsearch
	
	"Autocomplete
		set complete=.,w,b,u,t

	" Path variable
		set path+=
		set path+=.\
		set path+=~\vimfiles\**
		set path+=~\vimfiles\ftplugin\**
		set path+=~\vimfiles\pack\**
		set path+=~\Projects\\**
		set path+=~\Vim\\\ Projects\\**
		set path+=C:\Program\\\ Files\\\ (x86)\Steam\steamapps\common\Kerbal\\\ Space\\\ Program\Ships\Script\\**
		set path+=~\OneDrive\Documents\PSG\\\ Documents\Class\\\ Documents\**
		set path+=~\OneDrive\Documents\Personal\\\ Documents\**
		set wildignore+=~\\vimfiles\\compiler\\mingw64**
	
	" Move viminfo file from $HOME to $HOME/vimfiles/vimfiles
		set viminfo+='1000,n~/vimfiles/viminfo

	" Folding
		set foldmethod=indent
		set foldcolumn=4


" Compilation and execution with hotkeys
	" Function to compile files when F8 is pressed
		function! CompileFunction()
			" dictionary of c and c++ compilers
			let l:filetypeCompileCommand = { 
			\ }
		
			let executeString = l:filetypeCompileCommand[tolower(expand("%:e"))]
			echo executeString
			execute executeString
		endfunction
	
	" Function to run files when F9 is pressed
		function! ExecuteFunction()
			" dictionary of run files
			let l:filetypeRunCommand = { 
			\ "py": "\!python \'%:p\'"
			\ }
		
			execute l:filetypeRunCommand[tolower(expand("%:e"))]
		endfunction


" Remaps and Abbreviations
	" Movement
		" Window movement does not need to be prefixed by <c-w>
			" nnoremap <c-l> <c-w>l
			" nnoremap <c-k> <c-w>k
			" nnoremap <c-j> <c-w>j
			" nnoremap <c-h> <c-w>h

		" Move to next and previous Fold with <c-j> and <c-K>
			nnoremap <c-j> zj
			nnoremap <c-k> zk

		" Window Resizing
			nnoremap <c-.> <c-w>>
			nnoremap <c-,> <c-w><
		
		" Moving Lines with Alt + Movement keys
			nnoremap <a-k> :m .-2<cr>
			nnoremap <a-j> :m .+1<cr>
			xnoremap <a-k> :m '<-2<cr>gv
			xnoremap <a-j> :m '>+1<cr>gv

	" Java
		inoreabbr psvm public static void main () {<cr>}<esc>O
		inoreabbr sop system.out.print("
		inoreabbr sopln system.out.println("

	" General 
		"Saves and reloads a file
			nnoremap <F7> :w<cr>:e%:p<cr>

		" Remaps Q to repeat macro
			nnoremap Q @@

		" Remaps D to delete line
			nnoremap D dd

		" Press Enter to Save
			nnoremap <cr> :w<cr>
			
			" Remap <cr> to <cr> in command window
				augroup cmdwin
					au! cmdwin
					autocmd CmdwinEnter * nnoremap <buffer> <cr> <cr> 
				augroup END
			

		" Vertical split using find
			cnoreabbr vsf vertical sfind


" Skeleton file creation
	" Autocmd
	augroup DefaultFileCreation
		autocmd!
		autocmd BufNewFile * try | execute 'so ~\vimfiles\skeletonfiles\'.expand("%:e").'.vim' | catch /.*/ | finally | endtry
	augroup END

" Packages 
	" Adds matchit
		if has('syntax') && has('eval')
		  packadd! matchit
		endif

" Plugin Settings
	" TitleCase 
		let g:titlecase_map_keys=0

" Ultisnips
	let g:UltiSnipsEditSplit="vertical"
	let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = $HOME."/vimfiles/UltiSnips/"

	" Refreshes snippets everytime a snippet file is changed
		augroup Ultisnipsend
			au!
			autocmd BufRead *.snippets call UltiSnips#RefreshSnippets()
		augroup END	

