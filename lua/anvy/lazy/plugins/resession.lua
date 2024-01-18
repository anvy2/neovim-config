return {
	"stevearc/resession.nvim",
	opts = {},
	config = function()
		require("resession").setup({
			autosave = {
				enabled = true,
				interval = 30,
				notify = true,
			},
		})
	end,
}
