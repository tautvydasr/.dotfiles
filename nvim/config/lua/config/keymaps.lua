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

-- Git
-- if vim.fn.executable("lazygit") == 0 then
--   -- vim.keymap.del("n", "<leader>gg")
--   vim.keymap.del("n", "<leader>gG")
--   vim.keymap.del("n", "<leader>gf")
--   vim.keymap.del("n", "<leader>gl")
--   vim.keymap.del("n", "<leader>gL")
-- end

vim.keymap.set(
  { "n", "v" },
  "<leader>gf",
  "G<cmd>2,s/pick/fixup/g<cr>gg<cmd>noh<cr>",
  { desc = "Pick first and [g]it [f]ixup all other commits when rebasing", silent = true }
)

-- Marks
vim.keymap.set(
  { "n", "v" },
  "<leader>md",
  "<cmd>delmarks! | wshada!<cr><esc>",
  { desc = "NeoVim [m]arks [d]elete for the current buffer" }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>mD",
  "<cmd>delmarks a-zA-Z | wshada!<cr><esc>",
  { desc = "NeoVim all [m]arks [D]elete globally" }
)
