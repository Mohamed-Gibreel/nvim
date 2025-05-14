return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	-- config = true,
	config = function()
		require("flutter-tools").setup({
			-- flutter_path = "./home/mohamedgibreel/fvm/default/bin/dart",
			fvm = true,
		})
		local keymap = vim.keymap
		keymap.set("n", "<leader>Fl", "<cmd>FlutterLogToggle<cr>", { desc = "Toggle flutter log buffer" })
	end,
}
