vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

require "core"
require "core.options"

-- setup packer + plugins
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
  print "Cloning packer .."
  fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

  -- install plugins + compile their configs
  vim.cmd "packadd packer.nvim"
  require "plugins"
  vim.cmd "PackerSync"
end

pcall(require, "custom")

require("core.utils").load_mappings()

-- init.vim
local set = vim.opt
local map = vim.api.nvim_set_keymap

-- system behaviour
set.errorbells = false
set.swapfile = false
set.wrap = true
set.linebreak = true
set.hlsearch = false

-- clipboard
map('v', '<C-c>', '"+y', {noremap=true})
map('v', 'y', '"+y', {noremap=true})
map('v', 'd', '"+d', {noremap=true})
map('v', 'p', '"+p', {noremap=true})
map('n', 'yy', '"+yy', {noremap=true})
map('n', 'dd', '"+dd', {noremap=true})
map('n', 'p', '"+p', {noremap=true})

-- quick commands
map('c', ':q', 'q!', {noremap=true})
map('c', ':wq', 'wq!', {noremap=true})

-- ui
set.nu = true

-- navigation
set.scrolloff = 6
set.incsearch = true

-- tab
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.smartindent = true


