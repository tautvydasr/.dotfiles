-- Install packer itself
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
  })
  print('Installing packer on "'..install_path..'" close and reopen Neovim')
end

local status_ok, packer = pcall(require, 'packer')

if not status_ok then
  return
end

return packer.startup(function(use)
  -- Plugins
  use 'wbthomason/packer.nvim'

  -- Sync packer automatically
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
