-- This is an example chadrc file , its supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

M.options = {
  local set = vim.opt
  set.tabstop = 4
  set.shiftwidth = 4
  set.softtabstop = 4
  set.expandtab = true

  set.so = 5

  set.noerrorbells = true

  set.incsearch = true
  set.ignorecase = true
  set.smartcase = true
}

-- example of changing theme:

M.ui = {
  theme = "onedark",
  italic_comments = false,

  transparency = false,
}

-- Install plugins
local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
   install = userPlugins,
   -- require('cmp').setup {enable = false},
   
}

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

return M
