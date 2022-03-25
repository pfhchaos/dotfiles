function! wordwrap#after() abort
  set wrap
  set breakindent
  set breakindentopt=shift:2

  nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
  nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
endfunction
