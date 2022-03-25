function! bootstrap#before() abort
  " setup transparent background
  autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight NonText guibg=NONE ctermbg=NONE
  autocmd ColorScheme * highlight EndOfBuffer guibg=NONE ctermbg=NONE
endfunction

function! bootstrap#after() abort
  " enable word wrap maintaining indent level
  set wrap
  set breakindent
  set breakindentopt=shift:2

  " map up and down to work nicely with word wrap
  nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
  nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
  
  " set latex options
  let g:vimtex_view_method = 'zathura'
endfunction
