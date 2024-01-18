vim.api.nvim_set_option("clipboard", "unnamed")
--- Set global variables
local globals = require("anvy.globals")
for key, val in pairs(globals) do
	vim.g[key] = val
end

--- Set opts variables
local opts = require("anvy.opts")
for key, val in pairs(opts) do
	vim.opt[key] = val
end

--- Setup Lazy package manager
require("anvy.lazy")

--- Set colorscheme
local colorscheme = require("colorscheme")
if not pcall(vim.cmd.colorscheme, colorscheme) then
	local utils = require("anvy/utils")
	utils.notify(("Error setting up colorscheme: %s"):format(colorscheme), vim.log.levels.ERROR, { title = "NEOVIM" })
end

-- if string.find(colorscheme, "light") then
-- 	vim.api.nvim_set_hl(0, "Cursor", { bg = "#7C9D96", fg = "#7c9d96" })
-- 	vim.api.nvim_set_hl(0, "Cursor2", { bg = "red", fg = "red" })
-- end
