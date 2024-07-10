require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- visual mode {{{
-- use tab to indent and unindent
map("v", "<tab>", ">gv")
map("v", "<S-tab>", "<gv")
-- }}}

-- fast saving
map("n", "<leader>w", ":w!<cr>")
-- close a window
map("n", "<leader>q", ":q!<cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("v", "<C-c>", "*y :let @+=@*<cr>")
map("n", "<C-v>",  "+P")

map("n", "<leader>o", ":OrganizeImports<cr>")
