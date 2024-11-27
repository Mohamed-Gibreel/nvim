return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = function()
		local flutterTools = require("flutter-tools")
		flutterTools.setup({
			-- flutter_lookup_cmd = "dirname ",
			fvm = true,
		})
	end,
}
