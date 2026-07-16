-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- delete per word
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete previous word" })
vim.keymap.set("c", "<C-BS>", "<C-w>", { desc = "Delete previous word" })

--copy and past (normally)
-- Copy
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y')

-- Paste
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("v", "<C-v>", '"+P')

-- Insert mode paste
vim.keymap.set("i", "<C-v>", "<C-r>+")

-- Command-line paste
vim.keymap.set("c", "<C-v>", "<C-r>+")

-- Select all from Insert mode
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { desc = "Select all" })
-- Escape the Insert mode
vim.keymap.set("i", "jk", "<Esc>", {
  noremap = true,
  silent = true,
  desc = "Exit insert mode",
})
