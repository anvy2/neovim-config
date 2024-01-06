return {
	"stevearc/resession.nvim",
	opts = {},
	config = function()
		require("resession").setup({
			autosave = {
				enabled = true,
				interval = 60,
				notify = true,
			},
		})
	end,
}
