return {
	"williamboman/mason.nvim",
	version = "1.11.0",
	dependencies = {
		{ "williamboman/mason-lspconfig.nvim", version = "1.32.0" },
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- Import mason
		local mason = require("mason")

		-- Import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- Import mason-tool-installer
		local mason_tool_installer = require("mason-tool-installer")

		-- Enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- List of servers for mason to install
			automatic_installation = false,
			ensure_installed = {
				-- "tsserver", # Deprecated
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"ast_grep",
				"clangd",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettierd",
				"stylua",
				"isort",
				"black",
				"pylint",
				-- "prettier",
				-- "eslint_d",
			},
		})
	end,
}
