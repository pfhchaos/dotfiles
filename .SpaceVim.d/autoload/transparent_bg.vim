function! transparent_bg#before() abort
  autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight NonText guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight EndOfBuffer guibg=NONE ctermbg=NONE
endfunction
