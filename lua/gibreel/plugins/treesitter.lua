return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ensure_installed = {
			"json",
			"javascript",
			"dart",
			"typescript",
			"tsx",
			"yaml",
			"html",
			"css",
			-- "prisma",
			"markdown",
			"markdown_inline",
			"svelte",
			-- "graphql",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"query",
			"vimdoc",
			"c",
		}

		require("nvim-treesitter").install(ensure_installed)

		-- Enable highlighting and indentation for any buffer with an installed parser
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				if pcall(vim.treesitter.start) then
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
