return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
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
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
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
