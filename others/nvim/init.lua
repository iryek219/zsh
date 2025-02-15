-- ~/nvim/init.lua
require("hwan.settings")
require("hwan.maps") -- key bindings
require("hwan.lazy")

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)
