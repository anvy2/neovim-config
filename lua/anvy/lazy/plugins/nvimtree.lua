return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		{
			"JMarkin/nvim-tree.lua-float-preview",
			lazy = true,
			-- default
			opts = {
				-- wrap nvimtree commands
				wrap_nvimtree_commands = true,
				-- lines for scroll
				-- scroll_lines = 20,
				-- window config
				-- window = {
				-- 	style = "minimal",
				-- 	relative = "win",
				-- 	border = "rounded",
				-- 	wrap = false,
				-- },
				mapping = {
					-- scroll down float buffer
					down = { "<C-d>" },
					-- scroll up float buffer
					up = { "<C-e>", "<C-u>" },
					-- enable/disable float windows
					toggle = { "<C-x>" },
				},
				-- hooks if return false preview doesn't shown
				hooks = {
					pre_open = function(path)
						-- if file > 5 MB or not text -> not preview
						local size = require("float-preview.utils").get_size(path)
						if type(size) ~= "number" then
							return false
						end
						local is_text = require("float-preview.utils").is_text(path)
						return size < 5 and is_text
					end,
					post_open = function(bufnr)
						return true
					end,
				},
			},
			config = function()
				local HEIGHT_RATIO = 0.8 -- You can change this
				local WIDTH_RATIO = 0.5
				require("float-preview").setup({
					window = {
						wrap = false,
						trim_height = false,
						open_win_config = function()
							local screen_w = vim.opt.columns:get()
							local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
							local window_w = screen_w * WIDTH_RATIO
							local window_h = screen_h * HEIGHT_RATIO
							local window_w_int = math.floor(window_w)
							local window_h_int = math.floor(window_h)
							local center_x = (screen_w - window_w) / 2
							local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()

							return {
								style = "minimal",
								relative = "editor",
								border = "single",
								row = center_y,
								col = center_x,
								width = window_w_int,
								height = window_h_int,
							}
						end,
					},
				})
			end,
		},
	},
	config = function()
		require("nvim-tree").setup({
			git = {
				enable = true,
				ignore = false,
			},
			on_attach = function(bufnr)
				local api = require("nvim-tree.api")
				local FloatPreview = require("float-preview")
				api.config.mappings.default_on_attach(bufnr)
				FloatPreview.attach_nvimtree(bufnr)
				-- local close_wrap = FloatPreview.close_wrap
				-- local function opts(desc)
				-- 	return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				-- end

				--     -- default mappings
				-- vim.keymap.set("n", "<C-t>", close_wrap(api.node.open.tab), opts("Open: New Tab"))
				-- vim.keymap.set("n", "<C-v>", close_wrap(api.node.open.vertical), opts("Open: Vertical Split"))
				-- vim.keymap.set("n", "<C-s>", close_wrap(api.node.open.horizontal), opts("Open: Horizontal Split"))
				-- vim.keymap.set("n", "<CR>", close_wrap(api.node.open.edit), opts("Open"))
				-- vim.keymap.set("n", "<Tab>", close_wrap(api.node.open.preview), opts("Open"))
				-- vim.keymap.set("n", "o", close_wrap(api.node.open.edit), opts("Open"))
				-- vim.keymap.set("n", "O", close_wrap(api.node.open.no_window_picker), opts("Open: No Window Picker"))
				-- vim.keymap.set("n", "a", close_wrap(api.fs.create), opts("Create"))
				-- vim.keymap.set("n", "d", close_wrap(api.fs.remove), opts("Delete"))
				-- vim.keymap.set("n", "r", close_wrap(api.fs.rename), opts("Rename"))
				--     -- custom mappings
				--     vim.keymap.set('n', '<leader>t', api.tree.change_root_to_parent, opts('Up'))
				--     vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
			end,
		})
	end,
}
