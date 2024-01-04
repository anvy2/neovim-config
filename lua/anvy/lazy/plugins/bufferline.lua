return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				indicator = {
					style = "underline",
				},
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
				},
				diagnostics = false,
				color_icons = false,
				show_buffer_icons = false,
				separator_style = "slope",
			},
		})
	end,
}
