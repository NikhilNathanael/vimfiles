" Written by Nikhil Nathanael Ilango
" Started on Thursday, March 31, 2022 at 12:40:54 PM

" This gets rid of the nasty _ italic bug in tpope's vim-markdown
" " block $$...$$
syn region math start=/\$\$/ end=/\$\$/
" " inline math
syn match math '\$[^$].\{-}\$'

" actually highlight the region we defined as "math"
hi link math Statement
