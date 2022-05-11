fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup JUANITO
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
  autocmd BufWritePre * lua vim.lsp.buf.formatting_seq_sync()
augroup END
