return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				themable = true,
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
				separator_style = { "", " " },
			},
			highlights = {
				offset_separator = {
					bg = "#000000",
					fg = "#000000",
				},
				background = {
					fg = "#756AB6",
				},
				buffer_selected = {
					fg = "#AC87C5",
				},
				buffer_visible = {
					fg = "#AC87C5",
				},
				close_button = {
					fg = "#756AB6",
				},
				close_button_visible = {
					fg = "#756AB6",
				},
				close_button_selected = {
					fg = "#AC87C5",
				},
				pick_selected = {
					fg = "#AC87C5",
					bold = true,
					italic = true,
				},
			},
		})
	end,
}
