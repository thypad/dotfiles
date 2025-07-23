-- ~/.config/nvim/lua/core/keymaps.lua

local keymap = vim.keymap -- for conciseness

vim.g.mapleader = " " -- set the leader key to space

-- open file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Basic file operations
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save current file" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit current window" })

-- Window navigation (Ctrl + h/j/k/l)
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to down window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to up window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Which-Key trigger
keymap.set("n", "<leader><leader>", ":WhichKey <leader><CR>", { desc = "Show Which-Key menu" })
