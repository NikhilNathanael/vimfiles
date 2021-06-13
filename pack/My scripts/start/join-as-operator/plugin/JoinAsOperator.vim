" Avoid installing twice or when in unsupported Vim version.
if exists('g:loaded_JoinAsOperator') || (v:version < 800)
    finish
endif
let g:loaded_JoinAsOperator = 1

function! s:JoinAsVerb(type) 
	silent execute "normal :\'[,\']join"
endfunction

nnoremap <Plug>JoinOperator             :set operatorfunc=<SID>JoinAsVerb<cr>g@
nnoremap <Plug>JoinSingleLineOperator   <c-u>:join<cr>

if !hasmapto('<Plug>JoinOperator', 'n')
	nmap J <Plug>JoinOperator
endif
if !hasmapto('<Plug>JoinSingleLineOperator', 'n')
    nmap JJ <Plug>JoinSingleLineOperator
endif
