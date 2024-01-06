return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			color_overrides = {
				flavour = "mocha", -- latte, frappe, macchiato, mocha
				term_colors = true,
				transparent_background = true,
				no_italic = false,
				no_bold = false,
				styles = {
					comments = {},
					conditionals = {},
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
				},
				color_overrides = {
					mocha = {},
				},
				highlight_overrides = {
					mocha = function(C)
						return {
							TabLineSel = { bg = C.pink },
							CmpBorder = { fg = C.surface2 },
							Pmenu = { bg = C.none },
							TelescopeBorder = { link = "FloatBorder" },
						}
					end,
				},
				mocha = {
					base = "#0b0b12",
					mantle = "#0b0b12",
					crust = "#0b0b12",
					-- rosewater = "#efc9c2",
					-- flamingo = "#ebb2b2",
					-- pink = "#f2a7de",
					-- mauve = "#b889f4",
					-- red = "#ea7183",
					-- maroon = "#ea838c",
					-- peach = "#f39967",
					-- yellow = "#eaca89",
					-- green = "#96d382",
					-- teal = "#78cec1",
					-- sky = "#91d7e3",
					-- sapphire = "#68bae0",
					-- blue = "#739df2",
					-- lavender = "#a0a8f6",
					-- text = "#b5c1f1",
					-- subtext1 = "#a6b0d8",
					-- subtext0 = "#959ec2",
					-- overlay2 = "#848cad",
					-- overlay1 = "#717997",
					-- overlay0 = "#63677f",
					-- surface2 = "#505469",
					-- surface1 = "#3e4255",
					-- surface0 = "#2c2f40",
					-- base = "#1a1c2a",
					-- mantle = "#141620",
					-- crust = "#0e0f16",
				},
			},
		})
	end,
}
