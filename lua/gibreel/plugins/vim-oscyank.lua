return {
	"ojroques/vim-oscyank",
	branch = "main",
	config = function()
		-- Import comment plugin safely
		local wk = require("which-key")

		wk.add({
			{ "<leader>c", "<Plug>OSCYankOperator", desc = "Yank to local clipboard" },
		})

		wk.add({
			{ "<leader>c", "<Plug>OSCYankVisual", desc = "Yank to local clipboard", mode = "v" },
		})
	end,
}
