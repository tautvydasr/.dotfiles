-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("TermEnter", {
  callback = function()
    vim.opt.number = true
    vim.opt.relativenumber = true
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter", "VimResume" }, {
  callback = function()
    local stdout = vim.loop.new_tty(1, false)

    if stdout ~= nil then
      stdout:write(("\x1b]1337;SetUserVar=%s=%s\007"):format("NVIM_PADDING", "ZW5hYmxlZA=="))
      stdout:close()
    end
  end,
})

vim.api.nvim_create_autocmd({ "VimLeave", "VimSuspend" }, {
  callback = function()
    local stdout = vim.loop.new_tty(1, false)

    if stdout ~= nil then
      stdout:write(("\x1b]1337;SetUserVar=%s=%s\007"):format("NVIM_PADDING", "Cg=="))
      stdout:close()
    end
  end,
})
