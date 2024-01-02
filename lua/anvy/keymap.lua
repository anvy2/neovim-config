lazygit = require("anvy.utils.lazygit")

local lsp_actions = {
	name = "LSP Actions",
	r = { "<cmd>Telescope lsp_references<cr>", "References" },
	d = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
	I = { "<cmd>Telescope lsp_implementations<cr>", "Implementations" },
}

return {
	["<leader>n"] = {
		name = "NvimTree",
		o = { "<cmd>NvimTreeFocus<cr>", "Focus File Explorer" },
		e = { "<cmd>NvimTreeToggle<cr>", "Toggle File Explorer" },
		f = { "<cmd>NvimTreeFindFileToggle<cr>", "Current File" },
		d = { "<cmd>NvimTreeCollapseKeepBuffers<cr>", "Collapse unopened dir" },
		c = { "<cmd>NvimTreeCollapse<cr>", "Collapse Recursively" },
	},
	["<leader>f"] = {
		name = "Telescope",
		f = { "<cmd>Telescope find_files<cr>", "Find files" },
		w = { "<cmd>Telescope live_grep<cr>", "Find in files" },
		g = { "<cmd>Telescope grep_string<cr>", "Find in current file" },
		k = { "<cmd>Telescope keymaps<cr>", "Show all keymappings" }
	},
	["<leader>b"] = {
		name = "Buffer",
		f = { "<cmd>Telescope buffers<cr>", "Search buffers" },
	},
	["g"] = lsp_actions,
	["<leader>l"] = lsp_actions,
	["<leader>d"] = {
		name = "Diagnostics",
		f = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Show file diagnostics" },
		p = { "<cmd>Telescope diagnostics<cr>", "Show project diagnostics" },
		l = { vim.diagnostic.open_float, "Show line diagnostics" }
	},
	["<leader>t"] = {
		name = "Terminal",
		f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
		h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
		v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
	},
	["<leader>g"] = {
		name = "Git",
		g = { "<cmd>lua lazygit()<cr>", "Lazygit" }
	}
}
