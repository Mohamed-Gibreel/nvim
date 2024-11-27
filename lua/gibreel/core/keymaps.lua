vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
-- keymap.set("i", "jk", "<ESC>", {desc ="Exit insert mode with jk"})

-- Custom keybinds
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close file" })

-- Window management
keymap.set("n", "<leader>%", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", '<leader>"', "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>+", { desc = "Make all windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)
