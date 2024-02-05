-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Movements
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-u>zt", { desc = "Go [u]p and move top" })
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zt", { desc = "Go [d]own and move top" })
vim.keymap.set({ "n", "v" }, "n", "nztzv", { desc = "Search [n]ext and move top" })
vim.keymap.set({ "n", "v" }, "N", "Nztzv", { desc = "Search previous and move top" })

-- Telescope
vim.keymap.set(
  { "n", "v" },
  "<leader>fl",
  "<cmd>Telescope resume<cr>",
  { desc = "Telescope [f]ind [l]astly performed search" }
)

-- Yank/paste to/from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y', { desc = "[Y]ank to the system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "[y]ank to the system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "[P]aste from the system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "[p]aste from the system clipboard" })
