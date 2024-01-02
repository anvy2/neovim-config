return {
	"rcarriga/nvim-notify",
	-- opts = function()
	-- 	local stages = require("notify.stages")
	-- 	local render = require("notify.render")
	-- 	return {

	-- 	}
	-- end,
	config = function()
		notify = require("notify")
		notify.setup({
			stages = "fade",
			max_width = 80,
			render = "wrapped-compact",
		})
		vim.notify = notify
	end,
}
