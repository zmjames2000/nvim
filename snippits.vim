"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> bb <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap <buffer> ww <Esc>/ <++><CR>:nohlsearch<CR>c5l<CR>
autocmd Filetype markdown inoremap <buffer> -- ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> --- --------<Enter>
autocmd Filetype markdown inoremap <buffer> 88 ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> 888 **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> dd ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> `` `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ``` ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> cc - [ ] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> ii ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ll [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> 11 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> 22 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> 33 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> 44 ####<Space><Enter><++><Esc>kA
