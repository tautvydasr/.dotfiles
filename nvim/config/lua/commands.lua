vim.cmd([[
  augroup trim_trailing_white_space
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup end
]])
