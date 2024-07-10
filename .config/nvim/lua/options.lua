require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.opt.listchars = {
  eol = "$",
  tab = ">-",
  trail = "·",
  extends = ">",
  precedes = "<",
  nbsp = "¬"
}
vim.opt.list = true
vim.opt.colorcolumn="80"
-- hardwarp after 79 characters
vim.opt.textwidth=79

--[[vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = "*.js",
  command = "OrganizeImports",
})]]--
