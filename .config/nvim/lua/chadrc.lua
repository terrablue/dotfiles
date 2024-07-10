-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua
local theme = dofile(os.getenv("HOME") .. "/.config/ts/nvchad.lua")

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = theme,

  -- hl_override = {
  --  Comment = { italic = true },
  --  ["@comment"] = { italic = true },
  -- },
}

return M
