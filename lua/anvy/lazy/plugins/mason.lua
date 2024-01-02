return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			PATH = "prepend",
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			-- ensure_installed = {
			-- 	"tsserver",
			-- 	"html",
			-- 	"cssls",
			-- 	"tailwindcss",
			-- 	"svelte",
			-- 	"lua_ls",
			-- 	"graphql",
			-- 	"emmet_ls",
			-- 	"prismals",
			-- 	"pyright",
			-- 	"gopls",
			-- 	"clangd",
			-- 	"bufls",
			-- 	"volar",
			-- 	"sqls",
			-- 	"rust_analyzer",
			-- 	"htmx",
			-- 	"diagnosticls",
			-- 	"docker_compose_language_service",
			-- 	"denols",
			-- 	"bashls",
			-- 	"ast_grep",
			-- },
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"blue", -- python formatter
				"pylint", -- python linter
				"eslint_d",
				"buf", -- protobuf linter and formatter
				"yamllint",
				"sqlfluff",
				"djlint",
				"shellcheck",
				"ast_grep",
				"revive",
				"staticcheck",
				"luacheck",
				"yamlfmt",
				"xmlformatter",
				"sql-formatter",
			},
		})
	end,
}
