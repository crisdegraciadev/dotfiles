vim.g.mapleader = " "

local keymap = vim.keymap

-- exit normal mode
keymap.set("i", "jk", "<ESC>")

-- quick close
keymap.set("n", "<leader>qq", ":q<CR>")

-- remove highlights
keymap.set("n", "<leader>nn", ":nohl<CR>")

-- split window vertically/horizontally
keymap.set("n", "<leader>ss", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- new tab
keymap.set("n", "<leader>tt", ":tabnew<CR>")

-- next/prev tab
keymap.set("n", "<C-Right>", ":tabn<CR>")
keymap.set("n", "<C-Left>", ":tabp<CR>")

-- next/prev split
keymap.set("n", "<S-Right>", "<C-w>l")
keymap.set("n", "<S-Left>", "<C-w>h")

-- end of line
keymap.set({ "n", "v" }, "<S-e>", "$")
keymap.set({ "n", "v" }, "<S-b>", "_")

-- save with ctlr+s
keymap.set("n", "<C-s>", ":w<CR>")
